<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hospitalization.aspx.cs" Inherits="stories_stages_hospitalization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>פרק אשפוז</title>
    <meta name="description" content="הפרק השני שנועד לאסוף מידע על רגשות, חוויות המטופל במהלך הליך האשפוז" />
    <meta name="keywords" content="אשפוז,פרק אשפוז,רגשות,חוויות,מחשבות" />
    <meta name="author" content="ירדן טמיר ועמית מילר" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <link rel="icon" type="image/png" href="../images/favicon_mystory.png" />
    <!-- CSS -->
    <link href="../bootstrap/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="../bootstrap/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <!--<link href="Styles/reset.css" rel="stylesheet" type="text/css" />-->
    <link href="../Styles/myStyle.css" rel="stylesheet" type="text/css" />
    <!-- Scripts -->
    <script src="../jScripts/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="../jScripts/JavaScript.js" type="text/javascript"></script>
    <script src="../bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server" dir="rtl">
<div class="containerbox fix-the-top-containers" style="padding-bottom:70px">
        <!--Navbar-->

        <nav id="top-nav" class="navbar navbar-expand-md fixed-top add-border-bottom" dir="rtl">
            <div id="nav_hamburger">
                <nav class="navbar navbar-light bg-light" dir="ltr">
                    <!-- Navbar brand -->
                    <a class="navbar-brand" href="#"></a>

                    <!-- Collapse button -->
                    <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="dark-blue-text">
                            <i class="fas fa-bars fa-1x"></i>
                        </span>
                    </button>

                    <!-- Collapsible content -->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent1">

                        <!-- Links -->
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a id="table-nav-section1" class="nav-link" href="../login.html">התנתק</a>
                            </li>
                            <li class="nav-item">
                                <a id="about-nav-section" class="nav-link" href="#" data-toggle="modal"
                                   data-target="#aboutModal">אודות</a>
                            </li>
                            <li class="nav-item">
                                <a id="instructions-nav-section" class="nav-link" href="#" data-toggle="modal"
                                   data-target="#instructionsModal">איך משתפים</a>
                            </li>
                            <li class="nav-item">
                                <a id="stages-nav-section" class="nav-link" href="../episodes.html">פרקים</a>
                            </li>
                            <li class="nav-item only-admin">
                                <a id="table-nav-section2" class="nav-link" href="../data-table.html">טבלת ניהול</a>
                            </li>
                        </ul>
                        <!-- Links -->

                    </div>
                    <!-- Collapsible content -->
                </nav>

            </div>
            <!--/.Navbar-->
            <!-- Story Status Navbar -->
            <ul class="nav justify-content-center">
                <li class="nav-item story-nav-item">
                    <a id="Episode-link1" class="nav-link nav-link-text" href="#">הכרות</a>
                </li>
                <li class="nav-item story-nav-item">
                    <a id="Episode-link2" class="nav-link nav-link-text active" href="#">אשפוז</a>
                </li>
                <li class="nav-item story-nav-item">
                    <a id="Episode-link3" class="nav-link nav-link-text" href="#">שחרור</a>
                </li>
            </ul>

            <!-- stories row -->
            <div class="scroll-container" style="margin-top:1.3%">
                <div class="scroll">
                    <div id="story15" class="currentStory hidequestion" qid="15">
                        <img id="currentImg15" />
                    </div>
                    <div id="story16" class="currentStory hidequestion" qid="16">
                        <img id="currentImg16" />
                    </div>
                    <div id="story17" class="currentStory hidequestion" qid="17">
                        <img id="currentImg17" />
                    </div>
                    <div id="story18" class="currentStory hidequestion" qid="18">
                        <img id="currentImg18" />
                    </div>
                    <div id="story19" class="currentStory hidequestion" qid="19">
                        <img id="currentImg19" />
                    </div>
                    <div id="story20" class="currentStory hidequestion" qid="20">
                        <img id="currentImg20" />
                    </div>
                    <div id="story21" class="currentStory hidequestion" qid="21">
                        <img id="currentImg21" />
                    </div>
                    <div id="story22" class="currentStory hidequestion" qid="22">
                        <img id="currentImg22" />
                    </div>
                    <div id="story23" class="currentStory hidequestion" qid="23">
                        <img id="currentImg23" />
                    </div>
                    <div id="story24" class="currentStory hidequestion" qid="24">
                        <img id="currentImg24" />
                    </div>
                    <div id="story25" class="currentStory hidequestion" qid="25">
                        <img id="currentImg25" />
                    </div>
                    <div id="story26" class="currentStory hidequestion" qid="26">
                        <img id="currentImg26" />
                    </div>
                    <div id="story27" class="currentStory hidequestion" qid="27">
                        <img id="currentImg27" />
                    </div>
                    <div id="story28" class="currentStory hidequestion" qid="28">
                        <img id="currentImg28" />
                    </div>
                    <div id="story29" class="currentStory hidequestion" qid="29">
                        <img id="currentImg29" />
                    </div>
                    <div id="story30" class="currentStory hidequestion" qid="30">
                        <img id="currentImg30" />
                    </div>
                    <div id="story31" class="currentStory hidequestion" qid="31">
                        <img id="currentImg31" />
                    </div>
                    <div id="story32" class="currentStory hidequestion" qid="32">
                        <img id="currentImg32" />
                    </div>
                    <div id="story33" class="currentStory hidequestion" qid="33">
                        <img id="currentImg33" />
                    </div>
                    <div id="story34" class="currentStory hidequestion" qid="34">
                        <img id="currentImg34" />
                    </div>
                    <div id="story35" class="currentStory hidequestion" qid="35">
                        <img id="currentImg35" />
                    </div>
                    <div id="story36" class="currentStory hidequestion" qid="36">
                        <img id="currentImg36" />
                    </div>
                    <div id="story37" class="currentStory hidequestion" qid="37">
                        <img id="currentImg37" />
                    </div>
                    <div id="story38" class="currentStory hidequestion" qid="38">
                        <img id="currentImg38" />
                    </div>
                    <div id="story39" class="currentStory" qid="39">
                        <img id="currentImg39" />
                    </div>
                </div>
            </div>

        </nav>
        <!-- / Navbar -->
            <!-- / Navbar -->
            <!-- About Modal -->
        <div class="modal fade" id="aboutModal" tabindex="-1" role="dialog" aria-labelledby="aboutModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center" style="align-items: center;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="font-size:30pt">&times;</span>
                        </button>
                        <h5 class="modal-title w-100" id="aboutModalLabel">אודות</h5>
                    </div>
                    <div class="modal-body text-center">
                        <img src="../images/logo-story.png" class="logo" />
                        <p>
                            סביבה שיתופית המאפשרת למטופלים
                            <br />
                              לשתף מידע אישי עם הצוות הרפואי והחינוכי,
                            <br />
                            למען שיפור חווית הביקור בבית החולים.
                        </p>
                        <p>
                            פרויקט גמר, תש"פ
                            <br />
                            <a href="https://www.hit.ac.il/telem/overview">הפקולטה לטכנולוגיות למידה</a>
                        </p>

                        <div class="row justify-content-center" style="align-items: flex-start;">
                            <img src="../images/aboutLogos/logo T.L.gif" class="logo" />
                            <div style="text-align: right; margin-right: 3%;">
                                <p style="color:deeppink; font-weight: bold;margin:0;">
                                    צוות הפרויקט:
                                </p>
                                <p style="margin: 0;">
                                    ירדן טמיר
                                    <br />
                                    עמית מילר
                                </p>
                                <p style="color:deeppink; font-weight: bold; margin:0;">
                                    מנחי הפרויקט:
                                </p>
                                <p>
                                    ינאי זגורי
                                    <br />
                                    טל קליין
                                </p>
                            </div>
                        </div>

                        <div class="row justify-content-center" style="align-items: flex-start;">
                            <img src="../images/aboutLogos/youdo.png" class="logo" />
                            <div style="text-align: right; margin-right: 3%;">
                                <p style="margin: 0;">
                                    בשיתוף עם Youdo
                                </p>
                                <p style="color:deeppink;margin:0;">נציגות הארגון:</p>
                                <p>
                                    תמי בן צבי
                                    <br />
                                    דפי ויטלה
                                </p>
                            </div>
                        </div>

                        <div class="row justify-content-center" style="align-items: flex-start;">
                            <img src="../images/aboutLogos/בית-ספר-ויצמן-לוגו.png" class="logo" />
                            <div style="text-align: right; margin-right: 3%;">
                                <p style="color:deeppink;margin:0">צוות המרכז החינוכי:</p>
                                <p>
                                    שחר ברשף
                                    <br />
                                    ליטל טסלר
                                    <br />
                                    אסיה וקסלר
                                </p>
                            </div>
                        </div>

                        <div class="details-about-section">
                            <p>© כל הזכויות שמורות למכון טכנולוגי חולון HIT</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instructions Modal -->
        <div class="modal fade" id="instructionsModal" tabindex="-1" role="dialog"
             aria-labelledby="instructionsModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center" style="align-items: center;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="font-size:30pt">&times;</span>
                        </button>
                        <h5 class="modal-title w-100" id="instructionsModalLabel">איך משתפים</h5>
                    </div>
                    <div class="modal-body text-center">
                        <img src="../images/logo-story.png" class="logo" />
                        <p>
                            בסביבה השיתופית יש 3 פרקים,
                            <br />
                            ובכל פרק תיחשפו למספר שאלות.
                        </p>
                        <p>
                            המעבר בין השאלות מתבצע בעזרת גלילה,
                            <br />
                            יש אפשרות לדלג בין השאלות
                            <br />
                            וניתן לשנות תשובה בכל עת.

                        </p>

                        <p>
                            לאחר שיתוף של תשובה
                            <br />
                            הסביבה יוצרת לכם סיפור שנמצא בעיגולי ה-story
                            <br />
                            ותוכלו ללחוץ על עיגולי ה-story על מנת לצפות בסיפור שלכם.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Big-ImagesAns-Modal -->
        <div class="modal fade" id="Big-Images-Modal" tabindex="-1" role="dialog"
             aria-labelledby="NoExistsModalLabel" aria-hidden="true" href="javascript:void(0)">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center" style="align-items: center;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="font-size:30pt">&times;</span>
                        </button>
                        <h5 class="modal-title w-100" id="NoExistsModalLabel">הסיפור שלך</h5>
                    </div>
                    <div class="modal-body text-center">
                        <div class="marginthetop2" style="margin: 5%;">
                            <p id="this-question-big-img"></p>
                            <div id="text-on-image"></div>
                            <div style="border: 1px gray solid;margin-bottom: 30px;">
                            <img id="big-img-story" src="" />
                           <button id="like-big-img-story-btn" class="btn btn-outline-danger" type="button">
                            <img src="../images/stories/like.png" style="width:30%" class="likes-hover" />
                        </button>
                            </div>
                            <div id="dislike-div-big-img" class="colum" style="border: 1px gray solid;" />
                            <img id="big-img-story-dislike" src="" />
                                                        <button id="dislike-big-img-story-btn" class="btn btn-outline-danger" type="button">
                            <img src="../images/stories/dislike.png" style="width:30%" class="likes-hover" />
                        </button>
                            </div>
                            <p id="text-not-on-image"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Review -->

        <div class="review-section">

            <div class="header">

                <!--Content before waves-->
                <div class="inner-header">
                    <h5 id="review_title">ברוכים הבאים לפרק אשפוז</h5>
                    <p>
                        לא טוב לשמור דברים בבטן,
                        <br />
                        גללו בין הפוסטים על מנת לשתף אותנו.
                    </p>
                </div>

                <!--Waves Container-->
                <div class="waves-Container">
                    <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                         viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                        <defs>
                            <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
                        </defs>
                        <g class="parallax">
                            <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                            <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                            <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                            <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
                        </g>
                    </svg>
                </div>
                <!--Waves end-->

            </div>
            <!--Header ends-->
            <!--Content starts-->
            <div class="content-bottom-wave">
                <div class="arrow-down">
                    <img id="arrow-down-btn" src="../images/arrow-down.png">
                </div>
            </div>
            <!--Content ends-->

        </div>

        <hr class="style11 scrollTarget" />
<%--we used hidden field to send variables from C# to JS--%>
    <asp:HiddenField ID="idOfUser" runat="server" value="" /> 
    <asp:HiddenField ID="AllDataJson" runat="server" value=""/>
    <asp:HiddenField ID="ifPostback" runat="server" value=""/>
    <asp:HiddenField ID="postbackScrolltoQ" runat="server" value=""/>
    <asp:HiddenField ID="ScrollToNextQ" runat="server" value=""/>
    <asp:HiddenField ID="LastQ" runat="server" value="39"/>
     <asp:ImageButton ID="grayBackground" ImageUrl="../images/backgrounds/gray-background.png" style="display:none" runat="server" />
        <!-- Question 1 -->

        <div class="scrollTarget hideme question hidequestion scrollQ15" qid="15">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>באיזה יום התאשפזתם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> לחצו על<br /> הרשימה ובחרו <br /> אחד מהאופציות</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div class="form-group">
                    <select id="dropdown15" class="form-control select-day">
                        <option value="1">ראשון</option>
                        <option value="2">שני</option>
                        <option value="3">שלישי</option>
                        <option value="4">רביעי</option>
                        <option value="5">חמישי</option>
                        <option value="6">שישי</option>
                        <option value="7">שבת</option>
                    </select>
                    <img id="imgRadio15val1" src="../images/days/sunday.png" style="display:none" />
                    <img id="imgRadio15val2" src="../images/days/monday.png" style="display:none" />
                    <img id="imgRadio15val3" src="../images/days/trusday.png" style="display:none" />
                    <img id="imgRadio15val4" src="../images/days/wednesday.png" style="display:none" />
                    <img id="imgRadio15val5" src="../images/days/thursday.png" style="display:none" />
                    <img id="imgRadio15val6" src="../images/days/friday.png" style="display:none" />
                    <img id="imgRadio15val7" src="../images/days/saturday.png" style="display:none" />
                </div>
                 <asp:Button id="share15" type="button" class="btn btn-outline-primary-1 left_side_share_btn select-options" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="15" />

        <!-- Question 2 -->

        <div class="hideme question section-container hidequestion scrollQ16" qid="16">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה חשבתם ואיך הרגשתם כשהגעתם לבית החולים?</span>
                    <span>בחרו emoji:</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> בחרו emoji<br /> בלחיצה על <br />אחד מהאופציות<br /> ו/או רשמו תשובה<br /> בתיבה</span>
                </button>
            </div>
          <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q16" value="1" />
                        <img id="imgRadio16val1" src="../images/emoji/emoji0.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>מבוהל</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-3 centered">
                    <label> 
                        <figure>
                        <input type="radio" name="q16" value="2" />
                        <img id="imgRadio16val2" src="../images/emoji/emoji1.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>עצוב</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q16" value="3" />
                        <img id="imgRadio16val3" src="../images/emoji/emoji2.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        <figcaption>רגוע</figcaption>
                        </figure>
                    </label>
                </div>
                </div>
          <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q16" value="4" />
                        <img id="imgRadio16val4" src="../images/emoji/emoji3.png" class="hover-shadow end-section-emoji dont-show-heart" />
                             <figcaption>מתרגש</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-3 centered">
                    <label>   
                        <figure>
                        <input type="radio" name="q16" value="5" />
                        <img id="imgRadio16val5" src="../images/emoji/emoji4.png" class="hover-shadow end-section-emoji dont-show-heart" />
                       <figcaption>כועס</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-3 centered">
                    <label>  
                        <figure>
                        <input type="radio" name="q16" value="6" />
                        <img id="imgRadio16val6" src="../images/emoji/emoji5.png" class="hover-shadow end-section-emoji dont-show-heart" />
                          <figcaption>סקרן</figcaption>
                        </figure>
                    </label>
                </div>
            </div>

                <div class="form-group section-container share-post">
            <span class="text-center">מה היא הסיבה?</span>
            <div class="input-group post-inputs">
                <textarea id="SharedText16" rows="1" class="form-control auto_height"></textarea>
                </div>
        </div> 
 
            <div class="input-group post-inputs">
                <asp:Button id="share16" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
            </div>

            <div class="share-post">
<span id="Message16" style="color:red; visibility:hidden;">נא לבחור emoji</span>
            </div>
            
        </div>

        <hr class="style11 hidequestion" qid="16" />


           <!-- Question 13 -->

        <div class="hideme question hidequestion scrollQ17" qid="17">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>האם זה האשפוז הראשון שלכם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> בחרו תשובה<br /> בלחיצה על <br /> אחד מהאופציות<br /> וגם רשמו תשובה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div class="flex-row">
                    <label>
                        <input type="radio" name="q17" class="card-input-element" value="1" />
                        <span id="quiz-1" class="panel panel-default card-input card card-body bg-light red-quiz">
                            <span id="q17val1" class="panel-heading red-text">לא</span>
                        </span>
                        <img id="imgRadio17val1" src="../images/quiz-questions/no.png" class="dont-show-heart" style="display:none" />
                    </label>
                    <label>
                        <input type="radio" name="q17" class="card-input-element" value="2" />
                        <span id="quiz-2" class="panel panel-default card-input card card-body bg-light green-quiz">
                            <span id="q17val2" class="panel-heading green-text">כן</span>
                        </span>
                        <img id="imgRadio17val2" src="../images/quiz-questions/yes.png" class="dont-show-heart" style="display:none" />
                    </label>
                </div>
                  <div class="container">
                <div class="input-group post-inputs">
                    <textarea id="SharedText17" rows="1" class="form-control auto_height"></textarea>
                    </div> 
             </div>           
                <div class="input-group post-inputs">
               <button id="share17" type="button" class="btn btn-outline-primary-1 left_side_share_btn quiz-question">שתפו</button>
                          </div>
            </div>
            <div class="share-post">
                <p id="Message17" style="color:red; visibility:hidden;">נא לענות על הסקר</p>
            </div>
        </div>
        <hr class="style11 question hidequestion" qid="17" />

        <!-- Question 3 -->

        <div class="hideme question hidequestion scrollQ18" qid="18">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>איזה שאלות רציתם לשאול לפני הטיפול ושכחתם, התביישתם או שלא היה את מי לשאול?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>

                 <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText18" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">
                 <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question18" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart18val1" class="heart"></span>
                                    <input type="radio" name="q18" value="1" />
                                    <img id="imgRadio18val1" class="radio-picture hover-shadow" src="../images/backgrounds/marble-top-1101122.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart18val2" class="heart"></span>
                                    <input type="radio" name="q18" value="2" />
                                     <img id="imgRadio18val2" class="radio-picture hover-shadow" src="../images/backgrounds/white-headphone-1037992.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart18val3" class="heart"></span>
                                    <input type="radio" name="q18" value="3" />
                                    <img id="imgRadio18val3" class="radio-picture hover-shadow" src="../images/backgrounds/black-and-silver-film-camera-on-brown-wooden-surface-733853.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart18val4" class="heart"></span>
                                    <input type="radio" name="q18" value="4" />
                                    <img id="imgRadio18val4" class="radio-picture hover-shadow" src="../images/backgrounds/defocused-image-of-lights.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <asp:Button id="share18" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message18" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="18">

        <!-- Question 4 -->

        <div class="hideme question hidequestion scrollQ19" qid="19">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה אתם אומרים על האוכל בבית החולים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה<br /> בתיבה <br /> ו/או העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                 <div class="container share-post">
                     <span>שתפו אותנו</span>
                <div class="input-group post-inputs">
                    <asp:TextBox id="SharedText19" runat="server" rows="1" class="form-control auto_height"></asp:TextBox>
                    </div>
             </div>
                <span>או המחישו בתמונות</span>
                <div id="favorate_container" class="flex-row">
                    <div class="upload-emotional-image">
                        <div id="19q1" class="wrapper-upload">
                            <button id="up-img19q1" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic19q1" runat="server" type="file" accept="images/*" hidden></asp:FileUpload>
                        </div>
                        <button class="emotional-btn btn btn-outline-danger" type="button">
                            <img src="../images/stories/like.png" style="width:30%" class="likes-hover" />
                        </button>

                    </div>
                    <div class="upload-emotional-image">
                        <div id="19q2" class="wrapper-upload">
                            <button id="up-img19q2" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic19q2" runat="server" type="file" accept="images/*" hidden></asp:FileUpload>
                        </div>

                        <button class="emotional-btn btn btn-outline-danger" type="button">
                            <img src="../images/stories/dislike.png" style="width:30%" class="likes-hover" />
                        </button>
                    </div>
                </div>
                 <asp:Button id="sharelike19" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message19" style="color:red; visibility:hidden;">נא להעלות שתי תמונות</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="19">

        <!-- Question 5 -->

        <div class="hideme question hidequestion scrollQ20" qid="20">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">

                    <div class="select-room-number">
                        <span>אתם מאושפזים בחדר מס':</span>
                        <input id="select_room_input" type="number" class="form-control" />
                        <span style="display:none"> איך הייתם מציעים לשדרג את השהות?</span>
                    </div>

                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה <br /> בשתי התיבות <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
             <div class="share-post" style="margin-top:30px !important"> 
                 <span style="margin-bottom: 20px;">איך הייתם מציעים לשדרג את השהות?</span>
                    <textarea id="SharedText20" rows="1" class="form-control auto_height"></textarea>
             </div>
            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question20" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart20val1" class="heart"></span>
                                    <input type="radio" name="q20" value="1">
                                    <img id="imgRadio20val1" class="radio-picture hover-shadow" src="../images/rooms/bed-2268136_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart20val2" class="heart"></span>
                                    <input type="radio" name="q20" value="2">
                                    <img id="imgRadio20val2" class="radio-picture hover-shadow" src="../images/rooms/hospital-484848_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart20val3" class="heart"></span>
                                    <input type="radio" name="q20" value="3">
                                    <img id="imgRadio20val3" class="radio-picture hover-shadow" src="../images/rooms/hospital-ward-1338585_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart20val4" class="heart"></span>
                                    <input type="radio" name="q20" value="4">
                                    <img id="imgRadio20val4" class="radio-picture hover-shadow" src="../images/rooms/nursing-2340742_640.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                     <asp:Button id="share20" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message20" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="20">

        <!-- Question 6 -->

    
        <div class="hideme question hidequestion scrollQ21" qid="21">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>העלו תמונה של דבר אחד שאתם אוהבים בחדר האשפוז שלכם</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help help-tooltip">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="21" class="wrapper-upload">
                    <button id="up-img21" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic21" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                <asp:Button id="share21" type="button" class="btn btn-outline-primary-1-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
                <div class="share-post">
                       <asp:Label runat="server" id="Message21" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
                </div>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="21">

     <!-- Question 7 -->

        <div class="hideme question hidequestion scrollQ22" qid="22">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>איזה רופא/ה הכי עזר/ה לכם? איך?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה<br /> בתיבה <br /> ו/או העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="share-post">
                <div class="input-group post-inputs">
                    <asp:TextBox id="connectedtoQuestion22" type="text" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group section-container">
                <span>מה לא תבקשו סלפי?</span>
                <div id="22" class="wrapper-upload">
                    <button id="up-img22" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic22" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                  <asp:Button id="shareConn22" type="button" class="btn btn-outline-primary-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message22" style="color:red; visibility:hidden;">נא להעלות תמונה וגם להזין את התשובה בתיבה</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="22">

        <!-- Question 7 -->

        <div class="hideme problemshow question hidequestion scrollQ23" qid="23">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>איזה אחות גרמה לכם לחייך? איך?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה<br /> בתיבה <br /> ו/או העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="share-post">
                <div class="input-group post-inputs">
                    <asp:TextBox id="connectedtoQuestion23" type="text" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group section-container">
                <span>מה לא תבקשו סלפי?</span>
                <div id="23" class="wrapper-upload">
                    <button id="up-img23" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic23" runat="server" type="file" accept="images/*" hidden></asp:FileUpload>
                </div>
                 <asp:Button id="shareConn23" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message23" style="color:red; visibility:hidden;">נא להעלות תמונה וגם להזין את התשובה בתיבה</asp:Label>
            </div>


        </div>

        <hr class="style11 hidequestion" qid="23">


        <!-- Question 8 -->

        <div class="hideme question hidequestion scrollQ24" qid="24">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>למי סיפרתם שאתם מאושפזים? מישהו הגיע לבקר אתכם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <span>יש תמונות?</span>
                <div id="24" class="wrapper-upload">
                    <button id="up-img24" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic24" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                 <asp:Button id="share24" type="button" class="btn btn-outline-primary-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                  <asp:Label runat="server" id="Message24" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="24">

        <!-- Question 9 -->

        <div class="hideme question hidequestion scrollQ25" qid="25">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>לא תמיד נרצה לשתף את כולם באשפוז שלנו, מי לא הייתם רוצים שידעו שאתם כאן?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>

          <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText25" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">              
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question25" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart25val1" class="heart"></span>
                                    <input type="radio" name="q25" value="1" />
                                    <img id="imgRadio25val1" class="radio-picture hover-shadow" src="../images/backgrounds/background-design-floor-hardwood-235992.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart25val2" class="heart"></span>
                                    <input type="radio" name="q25" value="2" />
                                    <img id="imgRadio25val2" class="radio-picture hover-shadow" src="../images/backgrounds/blue-lined-flat-surface-132204.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart25val3" class="heart"></span>
                                    <input type="radio" name="q25" value="3" />
                                    <img id="imgRadio25val3" class="radio-picture hover-shadow" src="../images/backgrounds/close-up-of-silhouette-against-blue-sky-311039.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart25val4" class="heart"></span>
                                    <input type="radio" name="q25" value="4" />
                                    <img id="imgRadio25val4" class="radio-picture hover-shadow" src="../images/backgrounds/red-glittered-wallpaper-751373.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <asp:Button id="share25" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message25" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>
        <hr class="style11 hidequestion" qid="25">


        <!-- Question 10 -->

        <div class="hideme question hidequestion scrollQ26" qid="26">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>רשמו שלשה דברים נעימים/ נחמדים/ טובים באשפוז</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText26" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">     
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question26" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart26val1" class="heart"></span>
                                    <input type="radio" name="q26" value="1">
                                    <img id="imgRadio26val1" class="radio-picture hover-shadow" src="../images/backgrounds/flower-5459972_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart26val2" class="heart"></span>
                                    <input type="radio" name="q26" value="2">
                                    <img id="imgRadio26val2" class="radio-picture hover-shadow" src="../images/backgrounds/birch-tree-6055.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart26val3" class="heart"></span>
                                    <input type="radio" name="q26" value="3">
                                    <img id="imgRadio26val3" class="radio-picture hover-shadow" src="../images/backgrounds/sunrise-5572962_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart26val4" class="heart"></span>
                                    <input type="radio" name="q26" value="4">
                                    <img id="imgRadio26val4" class="radio-picture hover-shadow" src="../images/backgrounds/pink-clouds.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <asp:Button  id="share26" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>   
            <div class="share-post">
                <span id="Message26" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="26">

        <!-- Question 11 -->

        <div class="hideme question hidequestion scrollQ27" qid="27">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה הפסדתם בגלל שאתם בבית החולים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help help-tooltip" herf="#" data-toggle="tooltip" data-placement="bottom" title="Hooray!">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה<br /> ו/או רשמו תשובה<br /> בתיבה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <span>אפשר להמחיש את זה בצילום?</span>
                <div id="27" class="wrapper-upload">
                    <button id="up-img27" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic27" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                 <div class="container">
                     <span>או בכתב?</span>
                <div class="input-group post-inputs">
                    <asp:TextBox ID="connectedtoQuestion27" runat="server" rows="1" class="form-control auto_height"></asp:TextBox>
                    </div>
             </div>
                 <asp:Button  id="shareConn27" type="button" class="btn btn-outline-primary-1-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>

            </div>
            <div class="share-post">
                  <asp:Label runat="server" id="Message27" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>
        <hr class="style11 hidequestion" qid="27">

        <!-- Question 12 -->

        <div class="hideme question hidequestion scrollQ28" qid="28">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה הכי מעצבן באשפוז?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה<br /> ו/או רשמו תשובה<br /> בתיבה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <span>אפשר להמחיש את זה בצילום?</span>
                <div id="28" class="wrapper-upload">
                    <button id="up-img28" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic28" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                 <div class="container">
                     <span>או בכתב?</span>
                <div class="input-group post-inputs">
                    <asp:TextBox ID="connectedtoQuestion28" runat="server" rows="1" class="form-control auto_height"></asp:TextBox>
                    </div>
             </div>
                <asp:Button  id="shareConn28" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                    <asp:Label runat="server" id="Message28" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>
        <hr class="style11 hidequestion" qid="28">


        <!-- Question 14 -->

        <div class="hideme problemshow question hidequestion scrollQ29" qid="29">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מי היה איתכם בניתוח?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="29" class="wrapper-upload">
                    <button id="up-img29" class="no-image img-result" onclick="return false">Upload Image</button>
                    <asp:FileUpload id="uploderPic29" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                <asp:Button id="share29" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
                        <div class="share-post">
                 <asp:Label runat="server" id="Message29" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>



        <hr class="style11 question hidequestion" qid="29">

            <!-- Question 14 -->

        <div class="hideme problemshow question hidequestion scrollQ30" qid="30">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מי נמצא איתכם עכשיו?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="30" class="wrapper-upload">
                    <button id="up-img30" class="no-image img-result" onclick="return false">Upload Image</button>
                    <asp:FileUpload id="uploderPic30" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                <asp:Button id="share30" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
                        <div class="share-post">
                 <asp:Label runat="server" id="Message30" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>



        <hr class="style11 question hidequestion" qid="30">

        <!-- Question 15 -->

            <div class="hideme question hidequestion scrollQ31" qid="31">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>אם יכולתם לבחור בכל אדם שיהיה אתכם במהלך האשפוז, מי הוא היה?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="31" class="wrapper-upload">
                    <button id="up-img31" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic31" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                 <asp:Button id="share31" type="button" class="btn btn-outline-primary-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו" />
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message31" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="31">

    <!-- Question 16 -->

        <div class="hideme question hidequestion scrollQ32" qid="32">
            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה אתם זוכרים מלפני ואחרי הניתוח?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText32" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container"> 
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question32" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart32val1" class="heart"></span>
                                    <input type="radio" name="q32" value="1" />
                                    <img id="imgRadio32val1" class="radio-picture hover-shadow" src="../images/backgrounds/blue-lined-flat-surface-132204.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart32val2" class="heart"></span>
                                    <input type="radio" name="q32" value="2" />
                                    <img id="imgRadio32val2" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artificial-artistic-131634.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart32val3" class="heart"></span>
                                    <input type="radio" name="q32" value="3" />
                                    <img id="imgRadio32val3" class="radio-picture hover-shadow" src="../images/backgrounds/defocused-image-of-lights.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart32val4" class="heart"></span>
                                    <input type="radio" name="q32" value="4" />
                                    <img id="imgRadio32val4" class="radio-picture hover-shadow" src="../images/backgrounds/marble-top-1101122.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share32" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message32" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="32">

        <!-- Question 17 -->

        <div class="hideme question hidequestion scrollQ33" qid="33">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה חשבתם בפעם הראשונה כשאמרו לכם שאתם הולכים לעבור ניתוח?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText33" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container"> 
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question29" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart33val1" class="heart"></span>
                                    <input type="radio" name="q33" value="1">
                                    <img id="imgRadio33val1" class="radio-picture hover-shadow" src="../images/backgrounds/close-up-of-silhouette-against-blue-sky-311039.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart33val2" class="heart"></span>
                                    <input type="radio" name="q33" value="2">
                                    <img id="imgRadio33val2" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-background-carpentry-construction-268976.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart33val3" class="heart"></span>
                                    <input type="radio" name="q33" value="3">
                                    <img id="imgRadio33val3" class="radio-picture hover-shadow" src="../images/backgrounds/background-beautiful-clouds-cloudscape-552789.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart33val4" class="heart"></span>
                                    <input type="radio" name="q33" value="4" />
                                    <img id="imgRadio33val4" class="radio-picture hover-shadow" src="../images/backgrounds/birch-tree-6055.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share33" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message33" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>
        <hr class="style11 hidequestion" qid="33" />


        <div class="hideme question hidequestion scrollQ34" qid="34">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה למדתם על עצמכם באשפוז?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>

                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText34" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">   
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question34" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart34val1" class="heart"></span>
                                    <input type="radio" name="q34" value="1">
                                    <img id="imgRadio34val1" class="radio-picture hover-shadow" src="../images/backgrounds/birch-tree-6055.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart34val2" class="heart"></span>
                                    <input type="radio" name="q34" value="2">
                                    <img id="imgRadio34val2" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artistic-background-310452.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart34val3" class="heart"></span>
                                    <input type="radio" name="q34" value="3">
                                    <img id="imgRadio34val3" class="radio-picture hover-shadow" src="../images/backgrounds/moon-5307922_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart34val4" class="heart"></span>
                                    <input type="radio" name="q34" value="4">
                                    <img id="imgRadio34val4" class="radio-picture hover-shadow" src="../images/backgrounds/red-glittered-wallpaper-751373.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share34" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message34" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="34">


        <!-- Question 19 -->

           <div class="hideme question hidequestion scrollQ35" qid="35">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>איזה כוח גיליתם שיש לכם כדי להתגבר על כאב או פחד?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText35" rows="1" class="form-control auto_height"></textarea>
                    </div>
                </div>

            <div class="justify-content-center form-group section-container">
                <div id="content" class="border-light text-center">
                    <span>בחרו רקע לפוסט</span>
                    <div class="card-body">
                        <div id="question35" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart35val1" class="heart"></span>
                                    <input type="radio" name="q35" value="1">
                                    <img id="imgRadio35val1" class="radio-picture hover-shadow" src="../images/powerQuestion/man-raising-his-right-arm-2080544.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart35val2" class="heart"></span>
                                    <input type="radio" name="q35" value="2">
                                    <img id="imgRadio35val2" class="radio-picture hover-shadow" src="../images/powerQuestion/photo-of-woman-holding-a-green-paper-736842.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart35val3" class="heart"></span>
                                    <input type="radio" name="q35" value="3">
                                    <img id="imgRadio35val3" class="radio-picture hover-shadow" src="../images/powerQuestion/photo-of-woman-looking-at-the-mirror-774866.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart35val4" class="heart"></span>
                                    <input type="radio" name="q35" value="4">
                                    <img id="imgRadio35val4" class="radio-picture hover-shadow" src="../images/powerQuestion/woman-in-black-tank-top-and-black-pants-sitting-on-concrete-3820312.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share35" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message35" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>


        <hr class="style11 hidequestion" qid="35">


        <!-- Question 23 -->

        <div class="hideme question hidequestion scrollQ36" qid="36">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>חשבו וספרו לנו על משהו שיכול לשמח אתכם במיוחד, משהו הייתם רוצים לעשות עכשיו</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText36" rows="1" class="form-control auto_height"></textarea>
                    </div>
                </div>

            <div class="justify-content-center form-group section-container">
                <div id="content" class="border-light text-center">
                    <span>בחרו רקע לפוסט</span>
                    <div class="card-body">
                        <div id="question36" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart36val1" class="heart"></span>
                                    <input type="radio" name="q36" value="1">
                                    <img id="imgRadio36val1" class="radio-picture hover-shadow" src="../images/backgrounds/black-portable-speaker-1044989.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart36val2" class="heart"></span>
                                    <input type="radio" name="q36" value="2">
                                    <img id="imgRadio36val2" class="radio-picture hover-shadow" src="../images/backgrounds/defocused-image-of-lights.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart36val3" class="heart"></span>
                                    <input type="radio" name="q36" value="3">
                                    <img id="imgRadio36val3" class="radio-picture hover-shadow" src="../images/backgrounds/sunrise-5572962_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart36val4" class="heart"></span>
                                    <input type="radio" name="q36" value="4">
                                    <img id="imgRadio36val4" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-architecture-art-background-242616.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share36" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message36" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="36">


        <!-- Question 24 -->

        <div class="hideme question hidequestion scrollQ37" qid="37">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>אילו עיסוקים עוזרים לכם להעביר את הזמן באשפוז?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText37" rows="1" class="form-control auto_height"></textarea>
                    </div>
                </div>

            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question39" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart37val1" class="heart"></span>
                                    <input type="radio" name="q37" value="1">
                                    <img id="imgRadio37val1" class="radio-picture hover-shadow" src="../images/backgrounds/defocused-image-of-lights.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart37val2" class="heart"></span>
                                    <input type="radio" name="q37" value="2">
                                    <img id="imgRadio37val2" class="radio-picture hover-shadow" src="../images/backgrounds/marble-top-1101122.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart37val3" class="heart"></span>
                                    <input type="radio" name="q37" value="3">
                                    <img id="imgRadio37val3" class="radio-picture hover-shadow" src="../images/backgrounds/white-headphone-1037992.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart37val4" class="heart"></span>
                                    <input type="radio" name="q37" value="4">
                                    <img id="imgRadio37val4" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artificial-artistic-131634.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="share-post">
                <div class="input-group post-inputs">
                    <button id="share37" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
                <span id="Message37" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="37" />


        <!-- Question 28 -->

        <div class="hideme question hidequestion scrollQ38" qid="38">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה הייתם מספרים לילדים שבאים להתאשפז?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText38" rows="1" class="form-control auto_height"></textarea>
                    </div>
                </div>

            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question38" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart38val1" class="heart"></span>
                                    <input type="radio" name="q38" value="1" />
                                    <img id="imgRadio38val1" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artistic-background-310452.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart38val2" class="heart"></span>
                                    <input type="radio" name="q38" value="2" />
                                    <img id="imgRadio38val2" class="radio-picture hover-shadow" src="../images/backgrounds/background-beautiful-clouds-cloudscape-552789.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart38val3" class="heart"></span>
                                    <input type="radio" name="q38" value="3" />
                                    <img id="imgRadio38val3" class="radio-picture hover-shadow" src="../images/backgrounds/background-design-floor-hardwood-235992.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart38val4" class="heart"></span>
                                    <input type="radio" name="q38" value="4" />
                                    <img id="imgRadio38val4" class="radio-picture hover-shadow" src="../images/backgrounds/black-portable-speaker-1044989.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="share-post">
                <div class="input-group post-inputs">
                    <button id="share38" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
                <span id="Message38" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="38" />



        <!-- End Hospitalization Section -->

        <div class="section-container problemshow scrollQ39" qid="39">
            <h3 id="end_story_title" class="text-center">סיימתם את פרק אשפוז!</h3>
            <p class="text-center">בחרו emoji המתאר</p>
            <h5 class="text-center">איך אתם מרגישים עד עכשיו?</h5>
            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q39" value="1" />
                        <img id="imgRadio39val1" src="../images/emoji/emoji0.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>מבוהל</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label> 
                        <figure>
                        <input type="radio" name="q39" value="2" />
                        <img id="imgRadio39val2" src="../images/emoji/emoji1.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>עצוב</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q39" value="3" />
                        <img id="imgRadio39val3" src="../images/emoji/emoji2.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        <figcaption>רגוע</figcaption>
                        </figure>
                    </label>
                </div>
                </div>
                            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q39" value="4" />
                        <img id="imgRadio39val4" src="../images/emoji/emoji3.png" class="hover-shadow end-section-emoji dont-show-heart" />
                             <figcaption>מתרגש</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>   
                        <figure>
                        <input type="radio" name="q39" value="5" />
                        <img id="imgRadio39val5" src="../images/emoji/emoji4.png" class="hover-shadow end-section-emoji dont-show-heart" />
                       <figcaption>כועס</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>  
                        <figure>
                        <input type="radio" name="q39" value="6" />
                        <img id="imgRadio39val6" src="../images/emoji/emoji5.png" class="hover-shadow end-section-emoji dont-show-heart" />
                          <figcaption>סקרן</figcaption>
                        </figure>
                    </label>
                </div>
            </div>
            <h5 class="text-center">מה היא הסיבה?</h5>
        <div class="share-post">
            <div class="input-group post-inputs">
                <textarea id="SharedText39" rows="1" class="form-control auto_height"></textarea>
            </div>
            <div class="input-group post-inputs">
            <button id="share39" type="button" class="btn btn-outline-primary-1 radios-set" style="margin-left:15px">שתפו</button>             
            <button type="button" class="btn btn-outline-primary-opessite" onclick="location.href='../end-episode.html';">סיום פרק וצפייה ב-story</button>
            </div>
            <span id="Message39" style="color:red; visibility:hidden;">נא לבחור emoji וגם להזין את התשובה בתיבה</span>

        </div>
    </div>

                    <footer class="card-footer bg-white">
        <p>תוצר זה פותח במסגרת פרויקט גמר לתואר ראשון ב<a href="https://www.hit.ac.il/telem/B.A">פקולטה לטכנולוגיות למידה</a>, HIT מכון טכנולוגי חולון</p>
    </footer>
        
    
    </form>
</body>
</html>
