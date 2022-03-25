<%@ WebHandler Language="C#" Class="Handler" %>
//<PackageReference Include="Microsoft.AspNetCore.App" />
using System;
using System.Web;
using Newtonsoft.Json;
using System.Data;
using System.IO;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI;

public class Handler : IHttpHandler
{

    string mySource = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("App_Data/Database_mystory_AmitMiller_YardenTamir2.accdb") + ";";
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string reqType = context.Request["rType"];
        string res = "";
        switch (reqType)
        {
            case "userLogin":
                res = LoginFunc(context);
                //login check
                break;
            case "userCreate":
                res = userCreate(context);
                //makes new user in the database
                break;
            case "ChangePassword":
                res = ChangePassword(context);
                //updates the old users password to new password in the database
                break;
            case "SaveText":
                res = SaveText(context);
                // save text and pic options answers in the database
                break;
            case "SearchPhone":
                res = SearchPhone(context);
                // if has user - send user data and answers data
                break;
            case "EpisodeChange": // QuestionsChange
                res = EpisodeChange(context);
                // admin clicked on show/hide episode buttons
                break;
            case "QuestionsChange":
                res = QuestionsChange(context);
                // admin clicked on show/hide question buttons
                break;
            case "DeleteUser":
                res = DeleteUser(context);
                // when admin wants to delete spesific user
                break;
            case "UpdateUser":
                res = UpdateUser(context);
                // when admin wants to delete spesific user
                break;
            case "AllUsers":
                res = AllUsers(context);
                // get all users rows
                break;
        }
        context.Response.Write(res);
    }

    // function that gets all users rows
    public string AllUsers(HttpContext context)
    {
        string infoReturn = "";
        string myQueryUser = "SELECT * FROM users";
        DataSet userDs = sqlRet(myQueryUser);
        User user = new User();
        if (userDs.Tables[0].Rows.Count != 0) // if user exists
        {
            for (int i = 0; i < userDs.Tables[0].Rows.Count; i++)
            {
                // correct phone and password
                user.userID = userDs.Tables[0].Rows[i]["ID"].ToString();
                user.Phone = userDs.Tables[0].Rows[i]["Phone"].ToString();
                user.FirstName = userDs.Tables[0].Rows[i]["FirstName"].ToString();
                user.LastName = userDs.Tables[0].Rows[i]["LastName"].ToString();
                user.Password = userDs.Tables[0].Rows[i]["Password"].ToString();
                user.QuestionShow = userDs.Tables[0].Rows[i]["QuestionShow"].ToString();
                user.EpisodeShow = userDs.Tables[0].Rows[i]["EpisodeShow"].ToString();
                JsonSerializerSettings settings = new JsonSerializerSettings();
                settings.NullValueHandling = NullValueHandling.Ignore;
                infoReturn += JsonConvert.SerializeObject(user, settings);
            }
        } else
        {
            infoReturn = "";
        }

        return infoReturn;

    }

    string ansUserInfoReturnLogin;

    // login page check after "כניסה" btn click
    public string LoginFunc(HttpContext context)
    {
        string Phone = context.Request["Phone"];
        string Password = context.Request["Password"];
        string infoReturn;

        string myQueryUser = "SELECT * FROM users WHERE Phone = '" + Phone + "'";
        DataSet userDs = sqlRet(myQueryUser);
        User user = new User();
        Answers answers = new Answers();

        if (Phone.Length > 0 && Password.Length > 0) // אם הוזן בתיבות הטקסט תוכן
        {
            if (userDs.Tables[0].Rows.Count != 0) // if user exists
            {
                //Your username exist in your database
                if (userDs.Tables[0].Rows[0]["Phone"].ToString() == Phone && userDs.Tables[0].Rows[0]["Password"].ToString() == Password)
                {
                    // correct phone and password
                    user.userID = userDs.Tables[0].Rows[0]["ID"].ToString();
                    user.Phone = userDs.Tables[0].Rows[0]["Phone"].ToString();
                    user.FirstName = userDs.Tables[0].Rows[0]["FirstName"].ToString();
                    user.LastName = userDs.Tables[0].Rows[0]["LastName"].ToString();
                    user.Password = userDs.Tables[0].Rows[0]["Password"].ToString();
                    user.QuestionShow = userDs.Tables[0].Rows[0]["QuestionShow"].ToString();
                    user.EpisodeShow = userDs.Tables[0].Rows[0]["EpisodeShow"].ToString();
                    JsonSerializerSettings settings = new JsonSerializerSettings();
                    settings.NullValueHandling = NullValueHandling.Ignore;
                    infoReturn = JsonConvert.SerializeObject(user, settings);

                    /// -- get answers if has -- //
                    string myQueryAnswers = "SELECT * FROM UserAnswer WHERE UserId = " + userDs.Tables[0].Rows[0]["ID"].ToString();
                    DataSet ansDs = sqlRet(myQueryAnswers);
                    //User answers by phone search exists in your database
                    if (ansDs.Tables[0].Rows.Count != 0) // if has answers
                    {
                        for (int i = 0; i < ansDs.Tables[0].Rows.Count; i++)
                        {
                            answers.UserId = ansDs.Tables[0].Rows[i]["UserId"].ToString();
                            answers.QuestionId = ansDs.Tables[0].Rows[i]["QuestionId"].ToString();
                            answers.SharedText = ansDs.Tables[0].Rows[i]["SharedText"].ToString();
                            answers.SharedPic = ansDs.Tables[0].Rows[i]["SharedPic"].ToString();
                            answers.PicOptions = ansDs.Tables[0].Rows[i]["PicOptions"].ToString();
                            answers.InputTextOptions = ansDs.Tables[0].Rows[i]["InputTextOptions"].ToString();

                            JsonSerializerSettings settings2 = new JsonSerializerSettings();
                            settings2.NullValueHandling = NullValueHandling.Ignore;
                            ansUserInfoReturnLogin += JsonConvert.SerializeObject(answers, settings2);
                        }
                    }
                }
                else
                {
                    // password not match the phone number
                    infoReturn = "הסיסמא שגויה";
                    ansUserInfoReturnLogin = "";
                }
            }
            else
            {
                //user Doesn't exist
                ansUserInfoReturnLogin = "";
                infoReturn = "לא קיים";
            }
        }else
        {
            //empty inputs
            infoReturn = "למלא";
            ansUserInfoReturnLogin = "";
        }

        return infoReturn + ansUserInfoReturnLogin; // מחזיר לפונקציה ProcessRequest
    }

    // page register "צור" btn click 
    public string userCreate(HttpContext context)
    {
        string ID = getIdFromDataBase();
        string FirstName = context.Request["FirstName"];
        string LastName = context.Request["LastName"];
        string Phone = context.Request["Phone"];
        string Password = context.Request["Password"];
        string QuestionShow = "1,2,3,4,5,6,7,8,9,10,11,12,13";
        string EpisodeShow = "1";
        string infoReturnCreate;
        bool isPhoneExists = checkIfPhoneExists(Phone);

        if(FirstName != "" && LastName != "" && Phone != "" && Password != "") // אם הוזן תוכן בתיבות הטקסט
        {
            if(isPhoneExists) // אם קיים משתמש כזה כבר
            {
                infoReturnCreate = "כבר קיים משתמש";
            } else { // אם לא, צור חדש
                string myQueryCreate = "INSERT INTO users VALUES ('" +ID+ "','" +FirstName+ "','" +LastName+ "','" +Password+ "','" +Phone+ "','" + QuestionShow + "','" + EpisodeShow + "' )";
                sqlChg(myQueryCreate);
                infoReturnCreate = "נוצר";
            }
        }else // אם אין תוכן בתיבות הטקסט
        {
            infoReturnCreate = "נא למלא את כל השדות"; // מחזיר הודעה
        }
        return infoReturnCreate;
    }

    // function that check if user has answers - useful function
    public bool checkIfAnswerUserExists(string user_id,string question_id)
    {
        int user_ID =  Convert.ToInt32(user_id);
        int question_ID =  Convert.ToInt32(question_id);
        string myQueryUser = "SELECT * FROM UserAnswer WHERE UserId = " +  user_ID + " AND QuestionId = " +  question_ID + "";
        DataSet userDs = sqlRet(myQueryUser);
        bool isTrue = false; // if not return false
        if (userDs.Tables[0].Rows.Count != 0) // if answer exists
        {
            if (userDs.Tables[0].Rows[0]["UserId"].ToString() == user_id && userDs.Tables[0].Rows[0]["QuestionId"].ToString() == question_id)
            {
                isTrue = true; // if has return true
            }
        }
        return isTrue;
    }
    // btn click "שתפו" - to question with text
    public string SaveText(HttpContext context)
    {
        string ID = getIdFromDataBase2(); // create new answer id
        string UserId = context.Request["UserId"];
        string QuestionId = context.Request["QuestionId"];
        string SharedText = context.Request["SharedText"];
        string SharedPic = "";
        string PicOptions = context.Request["PicOptions"];
        string InputTextOptions = context.Request["InputTextOptions"];
        string infoReturn;

        if (!checkIfAnswerUserExists(UserId, QuestionId)) // if new answer to this question
        {
            string myQueryCreate = "INSERT INTO UserAnswer VALUES ('" +ID+ "','" +UserId+ "','" +QuestionId+ "','" +SharedText+ "','"
            +SharedPic+ "','" + InputTextOptions + "','" + PicOptions + "' )";
            sqlChg(myQueryCreate);
            infoReturn = getAllUserData(UserId); // return all tables data - useful to update session in js
        }
        else // if has answer to this question
        {
            string myQueryUpdate = "UPDATE UserAnswer SET [SharedText]='" + SharedText + "', [PicOptions]='" + PicOptions + "', [SharedPic]='" + SharedPic + "', [InputTextOptions]='" + InputTextOptions + "' WHERE [UserId]=" + UserId + " AND QuestionId = " + QuestionId + "";
            sqlChg(myQueryUpdate);
            infoReturn = getAllUserData(UserId); // return all tables data - useful to update session in js
        }
        return infoReturn;
    }

    public string getIdFromDataBase2() // creates new id to new answer
    {
        string myQueryUser = "SELECT TOP 1 ID FROM UserAnswer ORDER BY ID desc"; // select the biggest id
        DataSet userDs = sqlRet(myQueryUser);
        string Returnid;
        if(userDs.Tables[0].Rows.Count != 0)
        {
            Returnid = (Convert.ToInt32(userDs.Tables[0].Rows[0]["ID"]) + 1).ToString();
        }else
        {
            Returnid = "1";
        }
        return Returnid;
    }

    public string getIdFromDataBase() // creates new id to new user
    {
        string myQueryUser = "SELECT TOP 1 ID FROM users ORDER BY ID desc"; // select the biggest id
        DataSet userDs = sqlRet(myQueryUser);
        string Returnid;
        if(userDs.Tables[0].Rows.Count != 0) // if has rows
        {
            Returnid = (Convert.ToInt32(userDs.Tables[0].Rows[0]["ID"]) + 1).ToString();
        }else // no rows
        {
            Returnid = "1";
        }
        return Returnid;
    }

    public bool checkIfPhoneExists(string i_Phone)
    {
        string myQueryUser = "SELECT * FROM users WHERE Phone = '" + i_Phone + "'";
        DataSet userDs = sqlRet(myQueryUser);
        bool isTrue = false;
        if (userDs.Tables[0].Rows.Count != 0) // if user exists
        {
            if (userDs.Tables[0].Rows[0]["Phone"].ToString() == i_Phone)
            {
                isTrue = true;
            }
        }
        return isTrue;
    }


    public string checkIfPhoneExistsBringID(string i_Phone)
    {
        string myQueryUser = "SELECT * FROM users WHERE Phone = '" + i_Phone + "'";
        DataSet userDs = sqlRet(myQueryUser);
        string userID;
        if (userDs.Tables[0].Rows.Count != 0) // if user exists
        {
            userID = userDs.Tables[0].Rows[0]["ID"].ToString();
        }else
        {
            userID = "";
        }
        return userID;
    }

    // btn click "עדכן" in modal forgot pw 
    public string ChangePassword(HttpContext context)
    {
        string Phone = context.Request["Phone"];
        string NewPassword = context.Request["NewPassword"];
        string infoReturn = "";
        bool isPhoneExists = checkIfPhoneExists(Phone);
        string idOfPhone = checkIfPhoneExistsBringID(Phone);

        if(isPhoneExists) // if user exists
        {
            if(idOfPhone == "1")
            {
                infoReturn = "אדמין";
            }
            else { // not admin
                   // update pw
                string myQueryCreate = "UPDATE users SET [Password]='" + NewPassword + "' where [Phone]='" + Phone;
                sqlChg(myQueryCreate + "'");
                infoReturn = "השינוי בוצע";
            }
        }
        else if(!isPhoneExists) // user doesnt exsits
        {
            infoReturn = "מספר הטלפון לא קיים במערכת";
        }

        if(Phone.Length == 0 || NewPassword.Length == 0)
        {
            infoReturn = "נא למלא את כל השדות";
        }
        return infoReturn; // מחזיר לפונקציה ProcessRequest

    }


    //פעולת עדכון/הוספה/מחיקה מה-DB
    public void sqlChg(string myQuery)
    {
        OleDbConnection dbconn = new OleDbConnection(mySource);
        dbconn.Open();
        OleDbCommand mySqlCommand = new OleDbCommand(myQuery, dbconn);
        mySqlCommand.ExecuteNonQuery();
        dbconn.Close();
    }
    // select db
    public DataSet sqlRet(string myQuery)
    {
        OleDbDataAdapter oda = new OleDbDataAdapter(myQuery, mySource);
        DataSet ds = new DataSet();
        oda.Fill(ds);
        return ds;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    string ansUserInfoReturnTable;
    //page data table btn click "חפש"
    public string SearchPhone(HttpContext context)
    {
        string Phone = context.Request["Phone"];
        Answers answers = new Answers();
        string UserInfoReturn;

        string isPhoneExistsBringID = checkIfPhoneExistsBringID(Phone);

        if (isPhoneExistsBringID.Length >= 1)
        {
            ///--- get answers data--/// need loop

            string myQueryAnswers = "SELECT * FROM UserAnswer WHERE UserId = " + isPhoneExistsBringID;
            DataSet ansDs = sqlRet(myQueryAnswers);
            //User answers by phone search exists in your database
            if (ansDs.Tables[0].Rows.Count != 0) // if user exists
            {
                for (int i = 0; i < ansDs.Tables[0].Rows.Count; i++) // if has answers
                {
                    answers.UserId = ansDs.Tables[0].Rows[i]["UserId"].ToString();
                    answers.QuestionId = ansDs.Tables[0].Rows[i]["QuestionId"].ToString();
                    answers.SharedText = ansDs.Tables[0].Rows[i]["SharedText"].ToString();
                    answers.SharedPic = ansDs.Tables[0].Rows[i]["SharedPic"].ToString();
                    answers.PicOptions = ansDs.Tables[0].Rows[i]["PicOptions"].ToString();
                    answers.InputTextOptions = ansDs.Tables[0].Rows[i]["InputTextOptions"].ToString();

                    JsonSerializerSettings settings = new JsonSerializerSettings();
                    settings.NullValueHandling = NullValueHandling.Ignore;
                    ansUserInfoReturnTable += JsonConvert.SerializeObject(answers, settings);
                }
            } else
            {
                ansUserInfoReturnTable = "";
            }

            ///--- get user data--/// 
            string myQueryUser = "SELECT * FROM users WHERE Phone = '" + Phone + "'";
            DataSet userDs = sqlRet(myQueryUser);
            User user = new User();
            user.userID = userDs.Tables[0].Rows[0]["ID"].ToString();
            user.Phone = userDs.Tables[0].Rows[0]["Phone"].ToString();
            user.FirstName = userDs.Tables[0].Rows[0]["FirstName"].ToString();
            user.LastName = userDs.Tables[0].Rows[0]["LastName"].ToString();
            user.Password = userDs.Tables[0].Rows[0]["Password"].ToString();
            user.QuestionShow = userDs.Tables[0].Rows[0]["QuestionShow"].ToString();
            user.EpisodeShow = userDs.Tables[0].Rows[0]["EpisodeShow"].ToString();

            JsonSerializerSettings settings2 = new JsonSerializerSettings();
            settings2.NullValueHandling = NullValueHandling.Ignore;
            UserInfoReturn = JsonConvert.SerializeObject(user, settings2);
        }
        else
        {
            ansUserInfoReturnTable = "לא קיים";
            UserInfoReturn = "";
        }

        return UserInfoReturn + ansUserInfoReturnTable; // return all tables data that belong to specific user
    }


    // function hide/show episodes //
    public string EpisodeChange(HttpContext context)
    {
        string userID = context.Request["userID"];
        string EpisodeShowString = context.Request["EpisodeShowString"];
        //update the episodeshow
        string myQueryUpdate = "UPDATE users SET [EpisodeShow] = '" + EpisodeShowString + "' WHERE [ID]= " + userID + "";
        sqlChg(myQueryUpdate);

        string myQueryUser2 = "SELECT EpisodeShow FROM users WHERE ID = "+ userID +"";
        DataSet dsds = sqlRet(myQueryUser2);
        return dsds.Tables[0].Rows[0]["EpisodeShow"].ToString();
    }


    // function hide/show questions //
    public string QuestionsChange(HttpContext context)
    {
        string userID = context.Request["userID"];
        string QuestionShowString = context.Request["QuestionShowString"];
        //update the qshow
        string myQueryUpdate = "UPDATE users SET [QuestionShow] = '" + QuestionShowString + "' WHERE [ID]= " + userID + "";
        sqlChg(myQueryUpdate);
        //get qshow string
        string myQueryUser = "SELECT QuestionShow FROM users WHERE ID = " + userID + "";
        DataSet dsds = sqlRet(myQueryUser);

        return dsds.Tables[0].Rows[0]["QuestionShow"].ToString(); //return the qshow string
    }



    // when admin wants to delete user - btn click in modal "כן"
    public string DeleteUser(HttpContext context)
    {
        string userID = context.Request["userID"];
        string Phone = context.Request["Phone"];
        if(userID != "1") // dont delete admin
        {
            string myQueryAnswers = "DELETE * FROM UserAnswer WHERE UserId = " + userID;
            DataSet ansDs = sqlRet(myQueryAnswers);
            //User answers by phone search exists in your database

            string myQueryUser = "DELETE * FROM users WHERE ID = " + userID;
            DataSet userDs = sqlRet(myQueryUser);
        }
        return "sucess";
    }
    // when clicked on pencil and btn click "עדכן"
    public string UpdateUser(HttpContext context)
    {
        string userID = context.Request["userID"];
        string Phone = context.Request["Phone"];
        string FirstName = context.Request["FirstName"];
        string LastName = context.Request["LastName"];
        string Password = context.Request["Password"];
        string PhoneNew = context.Request["PhoneNew"];
        bool isPhoneExists = checkIfPhoneExists(Phone);
        bool isNEWPhoneExists = checkIfPhoneExists(PhoneNew);
        string NewPhoneExists = checkIfPhoneExistsBringID(PhoneNew);
        string UpdateUserReturn;

        if (isPhoneExists)
        {
            if (NewPhoneExists == userID || !isNEWPhoneExists) // if new phone belongs to this user
            {
                string myQueryUser = "UPDATE users SET [Phone] = '" + PhoneNew + "', [FirstName]='" + FirstName + "', [LastName]='" + LastName + "', [Password]='" + Password + "' WHERE [ID]= " + userID;
                DataSet userDs = sqlRet(myQueryUser);
                UpdateUserReturn = getAllUserData(userID); // return all tables data - useful to update session in js
            }else
            {
                UpdateUserReturn = "קיים";
            }
        }else
        {
            UpdateUserReturn = "לא קיים";
        }

        return UpdateUserReturn;
    }

    string ansUserData;

    //get all data that belong to user - 1 row in table users - all answer rows that belong to the user in table AnswersUsers
    public string getAllUserData(string userId)
    {
        Answers answers = new Answers();
        string UserInfoReturn;
        string myQueryAnswers = "SELECT * FROM UserAnswer WHERE UserId = " + userId;
        DataSet ansDs = sqlRet(myQueryAnswers);
        if (userId.Length >= 1)
        {
            //User answers by phone search exists in your database
            if (ansDs.Tables[0].Rows.Count != 0) // if user exists
            {
                //ansUserInfoReturn = "check";
                for (int i = 0; i < ansDs.Tables[0].Rows.Count; i++)
                {
                    answers.UserId = ansDs.Tables[0].Rows[i]["UserId"].ToString();
                    answers.QuestionId = ansDs.Tables[0].Rows[i]["QuestionId"].ToString();
                    answers.SharedText = ansDs.Tables[0].Rows[i]["SharedText"].ToString();
                    answers.SharedPic = ansDs.Tables[0].Rows[i]["SharedPic"].ToString();
                    answers.PicOptions = ansDs.Tables[0].Rows[i]["PicOptions"].ToString();
                    answers.InputTextOptions = ansDs.Tables[0].Rows[i]["InputTextOptions"].ToString();

                    JsonSerializerSettings settings = new JsonSerializerSettings();
                    settings.NullValueHandling = NullValueHandling.Ignore;
                    ansUserData += JsonConvert.SerializeObject(answers, settings);
                }
            }
            else
            {
                ansUserData = "";
            }

            ///--- get user data--/// 

            string myQueryUser = "SELECT * FROM users WHERE ID = " + userId;
            DataSet userDs = sqlRet(myQueryUser);
            User user = new User();

            user.userID = userDs.Tables[0].Rows[0]["ID"].ToString();
            user.Phone = userDs.Tables[0].Rows[0]["Phone"].ToString();
            user.FirstName = userDs.Tables[0].Rows[0]["FirstName"].ToString();
            user.LastName = userDs.Tables[0].Rows[0]["LastName"].ToString();
            user.Password = userDs.Tables[0].Rows[0]["Password"].ToString();
            user.QuestionShow = userDs.Tables[0].Rows[0]["QuestionShow"].ToString();
            user.EpisodeShow = userDs.Tables[0].Rows[0]["EpisodeShow"].ToString();

            JsonSerializerSettings settings2 = new JsonSerializerSettings();
            settings2.NullValueHandling = NullValueHandling.Ignore;
            UserInfoReturn = JsonConvert.SerializeObject(user, settings2);
        } else
        {
            ansUserData = "";
            UserInfoReturn = "";
        }

        return UserInfoReturn + ansUserData;
    }


}




















