using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class User
{
    private string _userID;
    private string _FirstName;
    private string _LastName;
    private string _Password;
    private string _Phone;
    private string _QuestionShow;
    private string _EpisodeShow;
    public string userID
    {
        get { return _userID; }
        set { _userID = value; }
    }

    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }


    public string LastName
    {
        get { return _LastName; }
        set { _LastName = value; }
    }


    public string Password
    {
        get { return _Password; }
        set { _Password = value; }
    }

    public string Phone
    {
        get { return _Phone; }
        set { _Phone = value; }
    }

    public string QuestionShow
    {
        get { return _QuestionShow; }
        set { _QuestionShow = value; }
    }

    public string EpisodeShow
    {
        get { return _EpisodeShow; }
        set { _EpisodeShow = value; }
    }



}