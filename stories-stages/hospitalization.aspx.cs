using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using Newtonsoft.Json;
using System.Data;
using System.IO;
using System.Web.Services;
using System.Data.OleDb;


public partial class stories_stages_hospitalization : System.Web.UI.Page
{
    string imagesLibPath = "../Uploaded_Images/";//הגדרת נתיב לשמירת הקובץ
    string imageNewName;
    string LikeTime1;
    string LikeTime2;
    string mySource = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("../App_Data/Database_mystory_AmitMiller_YardenTamir2.accdb") + ";";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            ((HiddenField)FindControl("ifPostback")).Value = "true";
        }
        else
        {
            ((HiddenField)FindControl("ifPostback")).Value = "false";
        }
    }

    protected void savePictoFolder(object sender, EventArgs e)
    {
        Button getBtn = (Button)sender;
        string buttonId = getBtn.ID;
        string num = buttonId.Substring(5);
        string UserID = ((HiddenField)FindControl("idOfUser")).Value;
        ((HiddenField)FindControl("postbackScrolltoQ")).Value = num;
        // upload image + share text
        if (buttonId.Contains("Conn"))
        {
            num = buttonId.Substring(9);

            if (((TextBox)FindControl("connectedtoQuestion" + num)).Text != "")
            {
                if (((FileUpload)FindControl("uploderPic" + num)).HasFile)
                {
                    Console.WriteLine("Inside function");
                    string sharedText = ((TextBox)FindControl("connectedtoQuestion" + num)).Text;
                    string fileType = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.ContentType;
                    if (fileType.Contains("image")) //בדיקה האם הקובץ שהוכנס הוא תמונה
                    {
                        // הנתיב המלא של הקובץ עם שמו האמיתי של הקובץ
                        string fileName = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName;
                        // הסיומת של הקובץ
                        string endOfFileName = fileName.Substring(fileName.LastIndexOf("."));
                        //לקיחת הזמן האמיתי למניעת כפילות בתמונות
                        string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");

                        // חיבור השם החדש עם הסיומת של הקובץ
                        imageNewName = imagesLibPath + "ID" + UserID + "Quest" + num + "Time" + myTime + endOfFileName;
                        //שמירה של הקובץ לספרייה בשם החדש שלו
                        //FileUpload1.PostedFile.SaveAs(Server.MapPath(imagesLibPath) + imageNewName);
                        ((FileUpload)FindControl("uploderPic" + num)).PostedFile.SaveAs(HttpContext.Current.Server.MapPath(imageNewName));

                        string allData = SavePic(UserID, num, "false", endOfFileName, sharedText, "");
                        ((HiddenField)FindControl("AllDataJson")).Value = allData;
                        ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";

                        //Bitmap img = new Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName);
                        System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.InputStream);

                        var imageHeight = bmpPostedImage.Height;
                        var imageWidth = bmpPostedImage.Width;

                        //קריאה לפונקציה המקטינה את התמונה
                        //אנו שולחים לה את התמונה שלנו בגירסאת הביטמאפ ואת האורך והרוחב שאנו רוצים לתמונה החדשה
                        System.Drawing.Image objImage = FixedSize(bmpPostedImage, imageWidth, imageHeight);

                        //שמירה של הקובץ לספרייה בשם החדש שלו
                        objImage.Save(Server.MapPath(imagesLibPath) + imageNewName);

                        objImage.Save(HttpContext.Current.Server.MapPath(imageNewName));

                        ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                        ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");

                        //saves to DataBase and set value to hiddenfield

                        ((TextBox)FindControl("connectedtoQuestion" + num)).Text = "";
                    }
                    else
                    {
                        ((Button)FindControl(buttonId)).Style.Remove("background-color");
                        ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                        ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
                    }
                }
                else
                {
                    Console.WriteLine("Inside function");
                    var PicOptions = ((ImageButton)FindControl("grayBackground")).ImageUrl.ToString();
                    Console.WriteLine(PicOptions.ToString());
                    var SharedText = ((TextBox)FindControl("connectedtoQuestion" + num)).Text;
                    //save PicOptions that checked to DataBase
                    string allData = SaveText(UserID, num, PicOptions, SharedText);
                    ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";
                    ((HiddenField)FindControl("AllDataJson")).Value = allData;
                    ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");

                }
            }
            else
            {

                if (((FileUpload)FindControl("uploderPic" + num)).HasFile)
                {
                    string sharedText = ((TextBox)FindControl("connectedtoQuestion" + num)).Text;
                    string fileType = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.ContentType;
                    if (fileType.Contains("image")) //בדיקה האם הקובץ שהוכנס הוא תמונה
                    {
                        // הנתיב המלא של הקובץ עם שמו האמיתי של הקובץ
                        string fileName = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName;
                        // הסיומת של הקובץ
                        string endOfFileName = fileName.Substring(fileName.LastIndexOf("."));
                        //לקיחת הזמן האמיתי למניעת כפילות בתמונות
                        string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");

                        // חיבור השם החדש עם הסיומת של הקובץ
                        imageNewName = imagesLibPath + "ID" + UserID + "Quest" + num + "Time" + myTime + endOfFileName;
                        //שמירה של הקובץ לספרייה בשם החדש שלו
                        //FileUpload1.PostedFile.SaveAs(Server.MapPath(imagesLibPath) + imageNewName);
                        ((FileUpload)FindControl("uploderPic" + num)).PostedFile.SaveAs(HttpContext.Current.Server.MapPath(imageNewName));

                        string allData = SavePic(UserID, num, "false", endOfFileName, sharedText, "");
                        ((HiddenField)FindControl("AllDataJson")).Value = allData;
                        ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";

                        //Bitmap img = new Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName);
                        System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.InputStream);

                        var imageHeight = bmpPostedImage.Height;
                        var imageWidth = bmpPostedImage.Width;

                        //קריאה לפונקציה המקטינה את התמונה
                        //אנו שולחים לה את התמונה שלנו בגירסאת הביטמאפ ואת האורך והרוחב שאנו רוצים לתמונה החדשה
                        System.Drawing.Image objImage = FixedSize(bmpPostedImage, imageWidth, imageHeight);

                        //שמירה של הקובץ לספרייה בשם החדש שלו
                        objImage.Save(Server.MapPath(imagesLibPath) + imageNewName);

                        objImage.Save(HttpContext.Current.Server.MapPath(imageNewName));

                        ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                        ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");

                        //saves to DataBase and set value to hiddenfield

                        ((TextBox)FindControl("connectedtoQuestion" + num)).Text = "";
                    }
                    else
                    {
                        ((Button)FindControl(buttonId)).Style.Remove("background-color");
                        ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                        ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
                    }
                    }
                }
        }
        else if (buttonId.Contains("like"))
        {
            num = buttonId.Substring(9);
            String[] endOfFile = new String[2]; // בשביל שני הסיומות של הנתיבים

            // do two images
            for (int i = 1; i < 3; i++)
            {
                if (((FileUpload)FindControl("uploderPic" + num + "q1")).HasFile && ((FileUpload)FindControl("uploderPic" + num + "q2")).HasFile)
                {
                        string fileType = ((FileUpload)FindControl("uploderPic" + num + "q" + i)).PostedFile.ContentType;
                        if (fileType.Contains("image")) //בדיקה האם הקובץ שהוכנס הוא תמונה
                        {
                            // הנתיב המלא של הקובץ עם שמו האמיתי של הקובץ
                            string fileName = ((FileUpload)FindControl("uploderPic" + num + "q" + i)).PostedFile.FileName;
                            // הסיומת של הקובץ
                            string endOfFileName = fileName.Substring(fileName.LastIndexOf("."));
                            endOfFile[i - 1] = endOfFileName;

                            //לקיחת הזמן האמיתי למניעת כפילות בתמונות
                            string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");

                            // חיבור השם החדש עם הסיומת של הקובץ
                            imageNewName = imagesLibPath + "ID" + UserID + "Quest" + num + "Like" + i + "Time" + myTime + endOfFileName;


                            //שמירה של הקובץ לספרייה בשם החדש שלו
                            //FileUpload1.PostedFile.SaveAs(Server.MapPath(imagesLibPath) + imageNewName);
                            ((FileUpload)FindControl("uploderPic" + num + "q" + i)).PostedFile.SaveAs(HttpContext.Current.Server.MapPath(imageNewName));

                            System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(((FileUpload)FindControl("uploderPic" + num + "q" + i)).PostedFile.InputStream);

                            var imageHeight = bmpPostedImage.Height;
                            var imageWidth = bmpPostedImage.Width;

                            //קריאה לפונקציה המקטינה את התמונה
                            //אנו שולחים לה את התמונה שלנו בגירסאת הביטמאפ ואת האורך והרוחב שאנו רוצים לתמונה החדשה
                            System.Drawing.Image objImage = FixedSize(bmpPostedImage, imageWidth, imageHeight);

                            //שמירה של הקובץ לספרייה בשם החדש שלו
                            objImage.Save(Server.MapPath(imagesLibPath) + imageNewName);

                            objImage.Save(HttpContext.Current.Server.MapPath(imageNewName));
                            if (i == 1)
                            {
                                LikeTime1 = myTime;
                            }
                            else if (i == 2)
                            {
                                LikeTime2 = myTime;
                                //saves to DataBase and set value to hiddenfield
                                string allData = SavePic(UserID, num, "true", endOfFile[0], "", endOfFile[1]);
                                ((HiddenField)FindControl("AllDataJson")).Value = allData;
                                ((HiddenField)FindControl("postbackScrolltoQ")).Value = num;
                                ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";
                            }
                    }
                    ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");
                }
                else
                {
                    if (((TextBox)FindControl("SharedText" + num)).Text != "")
                    {
                        var PicOptions = ((ImageButton)FindControl("grayBackground")).ImageUrl;
                        Console.WriteLine(PicOptions.ToString());
                        var SharedText = ((TextBox)FindControl("SharedText" + num)).Text;
                        //save PicOptions that checked to DataBase
                        string allData = SaveText(UserID, num, PicOptions, SharedText);
                        ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";
                        ((HiddenField)FindControl("AllDataJson")).Value = allData;
                        ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                        ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");
                    }
                    else
                    {
                        ((Button)FindControl(buttonId)).Style.Remove("background-color");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                    ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
                    }

                }

            }
        }
        // 1 upload image question
        else // if have only camera - not text or likes
        {
            if (((FileUpload)FindControl("uploderPic" + num)).HasFile)
            {
                string fileType = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.ContentType;
                if (fileType.Contains("image")) //בדיקה האם הקובץ שהוכנס הוא תמונה
                {
                    // הנתיב המלא של הקובץ עם שמו האמיתי של הקובץ
                    string fileName = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName;
                    // הסיומת של הקובץ
                    string endOfFileName = fileName.Substring(fileName.LastIndexOf("."));
                    //לקיחת הזמן האמיתי למניעת כפילות בתמונות
                    string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");

                    // חיבור השם החדש עם הסיומת של הקובץ
                    imageNewName = imagesLibPath + "ID" + UserID + "Quest" + num + "Time" + myTime + endOfFileName;

                    //שמירה של הקובץ לספרייה בשם החדש שלו
                    //FileUpload1.PostedFile.SaveAs(Server.MapPath(imagesLibPath) + imageNewName);
                    ((FileUpload)FindControl("uploderPic" + num)).PostedFile.SaveAs(HttpContext.Current.Server.MapPath(imageNewName));

                    string allData = SavePic(UserID, num, "false", endOfFileName, "", "");
                    ((HiddenField)FindControl("AllDataJson")).Value = allData;
                    ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";

                    System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.InputStream);

                    var imageHeight = bmpPostedImage.Height;
                    var imageWidth = bmpPostedImage.Width;

                    //קריאה לפונקציה המקטינה את התמונה
                    //אנו שולחים לה את התמונה שלנו בגירסאת הביטמאפ ואת האורך והרוחב שאנו רוצים לתמונה החדשה
                    System.Drawing.Image objImage = FixedSize(bmpPostedImage, imageWidth, imageHeight);

                    //שמירה של הקובץ לספרייה בשם החדש שלו
                    objImage.Save(Server.MapPath(imagesLibPath) + imageNewName);

                    objImage.Save(HttpContext.Current.Server.MapPath(imageNewName));
                    ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");


                    //string jsFunc = "animatedScroll(" + num + ")"; // פנייה לjs
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "myJsFn", jsFunc, true);

                }
                else
                {
                    ((Button)FindControl(buttonId)).Style.Remove("background-color");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                    ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
                }
            }
            else
            {
                ((Button)FindControl(buttonId)).Style.Remove("background-color");
                ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
            }
        }

    }

    protected void savePictoFolderRadio(object sender, EventArgs e)
    {
        Button getBtn = (Button)sender;
        string buttonId = getBtn.ID;
        string num = buttonId.Substring(5);
        string UserID = ((HiddenField)FindControl("idOfUser")).Value;
        string IsChecked = ((HiddenField)FindControl("HiddenField" + num)).Value;
        ((HiddenField)FindControl("postbackScrolltoQ")).Value = num;

        if (IsChecked == "not checked")
        {
            if (((FileUpload)FindControl("uploderPic" + num)).HasFile)
            {
                string fileType = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.ContentType;
                if (fileType.Contains("image")) //בדיקה האם הקובץ שהוכנס הוא תמונה
                {
                    // הנתיב המלא של הקובץ עם שמו האמיתי של הקובץ
                    string fileName = ((FileUpload)FindControl("uploderPic" + num)).PostedFile.FileName;
                    // הסיומת של הקובץ
                    string endOfFileName = fileName.Substring(fileName.LastIndexOf("."));
                    //לקיחת הזמן האמיתי למניעת כפילות בתמונות
                    string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");

                    // חיבור השם החדש עם הסיומת של הקובץ
                    imageNewName = imagesLibPath + "ID" + UserID + "Quest" + num + "Time" + myTime + endOfFileName;
                    //שמירה של הקובץ לספרייה בשם החדש שלו
                    //FileUpload1.PostedFile.SaveAs(Server.MapPath(imagesLibPath) + imageNewName);
                    ((FileUpload)FindControl("uploderPic" + num)).PostedFile.SaveAs(HttpContext.Current.Server.MapPath(imageNewName));

                    string allData = SavePic(UserID, num, "false", endOfFileName, "", "");
                    ((HiddenField)FindControl("AllDataJson")).Value = allData;
                    ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";

                    System.Drawing.Bitmap bmpPostedImage = new System.Drawing.Bitmap(((FileUpload)FindControl("uploderPic" + num)).PostedFile.InputStream);

                    var imageHeight = bmpPostedImage.Height;
                    var imageWidth = bmpPostedImage.Width;

                    //קריאה לפונקציה המקטינה את התמונה
                    //אנו שולחים לה את התמונה שלנו בגירסאת הביטמאפ ואת האורך והרוחב שאנו רוצים לתמונה החדשה
                    System.Drawing.Image objImage = FixedSize(bmpPostedImage, imageWidth, imageHeight);

                    //שמירה של הקובץ לספרייה בשם החדש שלו
                    objImage.Save(Server.MapPath(imagesLibPath) + imageNewName);

                    objImage.Save(HttpContext.Current.Server.MapPath(imageNewName));

                    //saves to DataBase and set value to hiddenfield
                    ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
                    ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");

                }
            }
            else
            {
                ((Button)FindControl(buttonId)).Style.Remove("background-color");
                ((Label)FindControl("Message" + num)).Style.Add("visibility", "visible");
                ((HiddenField)FindControl("ScrollToNextQ")).Value = "not saved";
            }
        }
        else
        {
            //save PicOptions that checked to DataBase
            string allData = SaveText(UserID, num, IsChecked,"");
            ((HiddenField)FindControl("ScrollToNextQ")).Value = "saved";
            ((HiddenField)FindControl("AllDataJson")).Value = allData;

            ((Button)FindControl(buttonId)).Style.Add("background-color", "white");
            ((Label)FindControl("Message" + num)).Style.Add("visibility", "hidden");
        }

        ((HiddenField)FindControl("HiddenField" + num)).Value = "not checked";
    }

    public string SaveText(string UserId, string QuestionId, string PicOptions, string SharedText)
    {
        string ID = getIdFromDataBase2();
        string SharedPic = "";
        string InputTextOptions = "";

        if (!checkIfAnswerUserExists(UserId, QuestionId))
        {
            string myQueryCreate = "INSERT INTO UserAnswer VALUES ('" + ID + "','" + UserId + "','" + QuestionId + "','" + SharedText + "','"
            + SharedPic + "','" + InputTextOptions + "','" + PicOptions + "' )";
            sqlChg(myQueryCreate);
        }
        else
        {
            string myQueryUpdate = "UPDATE UserAnswer SET [SharedText]='" + SharedText + "', [PicOptions]='" + PicOptions + "', [SharedPic]='" + SharedPic + "', [InputTextOptions]='" + InputTextOptions + "' WHERE [UserId]=" + UserId + " AND QuestionId = " + QuestionId + "";
            sqlChg(myQueryUpdate);
        }
        return getAllUserData(UserId);
    }

    //// פונקציה המקבלת את התמונה שהועלתה , האורך והרוחב שאנו רוצים לתמונה ומחזירה את התמונה המוקטנת
    static System.Drawing.Image FixedSize(System.Drawing.Image imgPhoto, int Width, int Height)
    {
        int sourceWidth = Convert.ToInt32(imgPhoto.Width);
        int sourceHeight = Convert.ToInt32(imgPhoto.Height);

        int sourceX = 0;
        int sourceY = 0;
        int destX = 0;
        int destY = 0;

        float nPercent = 0;
        float nPercentW = 0;
        float nPercentH = 0;

        nPercentW = ((float)Width / (float)sourceWidth);
        nPercentH = ((float)Height / (float)sourceHeight);
        if (nPercentH < nPercentW)
        {
            nPercent = nPercentH;
            destX = System.Convert.ToInt16((Width -
                          (sourceWidth * nPercent)) / 2);
        }
        else
        {
            nPercent = nPercentW;
            destY = System.Convert.ToInt16((Height -
                          (sourceHeight * nPercent)) / 2);
        }

        int destWidth = (int)(sourceWidth * nPercent);
        int destHeight = (int)(sourceHeight * nPercent);

        System.Drawing.Bitmap bmPhoto = new System.Drawing.Bitmap(Width, Height,
                          PixelFormat.Format24bppRgb);
        bmPhoto.SetResolution(imgPhoto.HorizontalResolution,
                         imgPhoto.VerticalResolution);

        System.Drawing.Graphics grPhoto = System.Drawing.Graphics.FromImage(bmPhoto);
        grPhoto.Clear(System.Drawing.Color.White);
        grPhoto.InterpolationMode =
                InterpolationMode.HighQualityBicubic;

        grPhoto.DrawImage(imgPhoto,
            new System.Drawing.Rectangle(destX, destY, destWidth, destHeight),
            new System.Drawing.Rectangle(sourceX, sourceY, sourceWidth, sourceHeight),
            System.Drawing.GraphicsUnit.Pixel);

        grPhoto.Dispose();
        return bmPhoto;
    }

    protected string SavePic(string UserId, string QuestionId, string iflike, string extFile, string SharedText, string extFile2)
    {
        string ID = getIdFromDataBase2();
        string PicOptions = "";
        string InputTextOptions = "";
        string imagesLibPath = "Uploaded_Images/";

        string myTime = DateTime.Now.ToString("dd_MM_yy-HH_mm_ss");
        string sharedpic;
        if (iflike == "false")
        {
            sharedpic = imagesLibPath + "ID" + UserId + "Quest" + QuestionId + "Time" + myTime + extFile;
        }
        else
        {
            sharedpic = imagesLibPath + "ID" + UserId + "Quest" + QuestionId + "Like1" + "Time" + LikeTime1 + extFile + "|" + imagesLibPath + "ID" + UserId + "Quest" + QuestionId + "Like2" + "Time" + LikeTime2 + extFile2;
        }

        if (!checkIfAnswerUserExists(UserId, QuestionId))
        {
            string myQueryCreate = "INSERT INTO UserAnswer VALUES ('" + ID + "','" + UserId + "','" + QuestionId + "','" + SharedText + "','"
                    + sharedpic + "','" + PicOptions + "','" + InputTextOptions + "' )";
            sqlChg(myQueryCreate);
        }
        else
        {
            string myQueryUpdate = "UPDATE UserAnswer SET [SharedText]='" + SharedText + "', [SharedPic]='" + sharedpic + "', [PicOptions]='" + PicOptions + "' WHERE [UserId]=" + UserId + " AND QuestionId = " + QuestionId + "";
            sqlChg(myQueryUpdate);
        }
        return getAllUserData(UserId); // מחזיר לפונקציה ProcessRequest
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

    public DataSet sqlRet(string myQuery)
    {
        OleDbDataAdapter oda = new OleDbDataAdapter(myQuery, mySource);
        DataSet ds = new DataSet();
        oda.Fill(ds);
        return ds;
    }


    public string getIdFromDataBase2()
    {
        string myQueryUser = "SELECT TOP 1 ID FROM UserAnswer ORDER BY ID desc";
        DataSet userDs = sqlRet(myQueryUser);
        string Returnid;
        if (userDs.Tables[0].Rows.Count != 0)
        {
            Returnid = (Convert.ToInt32(userDs.Tables[0].Rows[0]["ID"]) + 1).ToString();
        }
        else
        {
            Returnid = "1";
        }
        return Returnid;
    }

    public bool checkIfAnswerUserExists(string user_id, string question_id)
    {
        int user_ID = Convert.ToInt32(user_id);
        int question_ID = Convert.ToInt32(question_id);
        string myQueryUser = "SELECT * FROM UserAnswer WHERE UserId = " + user_ID + " AND QuestionId = " + question_ID + "";
        DataSet userDs = sqlRet(myQueryUser);
        bool isTrue = false;
        if (userDs.Tables[0].Rows.Count != 0) // if answer exists
        {
            if (userDs.Tables[0].Rows[0]["UserId"].ToString() == user_id && userDs.Tables[0].Rows[0]["QuestionId"].ToString() == question_id)
            {
                isTrue = true;
            }
        }
        return isTrue;
    }


    string ansUserData;
    public string getAllUserData(string userId)
    {
        Answers answers = new Answers();
        //string isPhoneExistsBringID = checkIfPhoneExistsBringID(Phone);
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
        }
        else
        {
            ansUserData = "";
            UserInfoReturn = "";
        }
        return UserInfoReturn + ansUserData;
    }
}