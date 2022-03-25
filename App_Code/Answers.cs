using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Answers
/// </summary>
public class Answers
{
    private string _UserId;
    private string _QuestionId;
    private string _SharedText;
    private string _SharedPic;
    private string _PicOptions;
    private string _InputTextOptions;
    public string UserId
    {
        get { return _UserId; }
        set { _UserId = value; }
    }

    public string QuestionId
    {
        get { return _QuestionId; }
        set { _QuestionId = value; }
    }


    public string SharedText
    {
        get { return _SharedText; }
        set { _SharedText = value; }
    }


    public string SharedPic
    {
        get { return _SharedPic; }
        set { _SharedPic = value; }
    }

    public string PicOptions
    {
        get { return _PicOptions; }
        set { _PicOptions = value; }
    }

    public string InputTextOptions
    {
        get { return _InputTextOptions; }
        set { _InputTextOptions = value; }
    }

}