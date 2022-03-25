<%@ Page Language="C#" AutoEventWireup="true" CodeFile="familiarity.aspx.cs" Inherits="familiarity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>פרק הכרות</title>
    <meta name="description" content="הפרק הראשון שנועד להכיר את המטופל לפני כניסתו להליך האשפוז" />
    <meta name="keywords" content="הכרות,פרק ראשון,מי אני,חלק ראשון" />
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
                    <a id="Episode-link1" class="nav-link nav-link-text active" href="#">הכרות</a>
                </li>
                <li class="nav-item story-nav-item">
                    <a id="Episode-link2" class="nav-link nav-link-text" href="#">אשפוז</a>
                </li>
                <li class="nav-item story-nav-item">
                    <a id="Episode-link3" class="nav-link nav-link-text" href="#">שחרור</a>
                </li>
            </ul>

            <!-- stories row -->
            <div class="scroll-container" style="margin-top:1.3%;">
                <div class="scroll">
                    <div id="story1" class="currentStory hidequestion" qid="1">
                        <img id="currentImg1" />
                    </div>
                    <div id="story2" class="currentStory hidequestion" qid="2">
                        <img id="currentImg2" />
                    </div>
                    <div id="story3" class="currentStory hidequestion" qid="3">
                        <img id="currentImg3" />
                    </div>
                    <div id="story4" class="currentStory hidequestion" qid="4">
                        <img id="currentImg4" />
                    </div>
                    <div id="story5" class="currentStory hidequestion" qid="5">
                        <img id="currentImg5" />
                    </div>
                    <div id="story6" class="currentStory hidequestion" qid="6">
                        <img id="currentImg6" />
                    </div>
                    <div id="story7" class="currentStory hidequestion" qid="7">
                        <img id="currentImg7" />
                    </div>
                    <div id="story8" class="currentStory hidequestion" qid="8">
                        <img id="currentImg8" />
                    </div>
                    <div id="story9" class="currentStory hidequestion" qid="9">
                        <img id="currentImg9" />
                    </div>
                    <div id="story10" class="currentStory hidequestion" qid="10">
                        <img id="currentImg10" />
                    </div>
                    <div id="story11" class="currentStory hidequestion" qid="11">
                        <img id="currentImg11" />
                    </div>
                    <div id="story12" class="currentStory hidequestion" qid="12">
                        <img id="currentImg12" />
                    </div>
                    <div id="story13" class="currentStory hidequestion" qid="13">
                        <img id="currentImg13" />
                    </div>
                    <div id="story14" class="currentStory" qid="14">
                        <img id="currentImg14" />
                    </div>
                </div>
            </div>

        </nav>
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
                    <h5 id="review_title">ברוכים הבאים לפרק הכרות</h5>
                    <p>
                        המסע שלכם מתחיל
                        <br />
                        נשמח להכיר אתכם ולגלות איזה מיוחדים אתם
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
                    <img id="arrow-down-btn" src="../images/arrow-down.png" />
                </div>
            </div>
            <!--Content ends-->
        </div>

        <hr class="style11 scrollTarget">
<%--we used hidden field to send variables from C# to JS--%>
    <asp:HiddenField ID="idOfUser" runat="server" value="" /> 
    <asp:HiddenField ID="AllDataJson" runat="server" value=""/>
    <asp:HiddenField ID="ifPostback" runat="server" value=""/>
    <asp:HiddenField ID="postbackScrolltoQ" runat="server" value=""/>
    <asp:HiddenField ID="ScrollToNextQ" runat="server" value=""/>
    <asp:HiddenField ID="LastQ" runat="server" value="14"/>
        <asp:ImageButton ID="grayBackground" ImageUrl="../images/backgrounds/gray-background.png" style="display:none" runat="server" />
        <!-- Question 1 -->


        <div class="hideme question hidequestion scrollQ1" qid="1">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מי המשפחה שלכם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>

            <div class="form-group section-container"> 
                <span>הוסיפו תמונה של המשפחה שלכם</span>
                <div id="1" class="wrapper-upload">
                    <button id="up-img1" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic1" runat="server" accept="images/*" hidden></asp:FileUpload>
                </div>

                <asp:Button id="share1" class="btn btn-outline-primary-1-1 left_side_share_btn" OnClick="savePictoFolder" runat="server" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label id="Message1" runat="server" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
                <asp:Label id="Answer_Saved1" runat="server" style="color:red; visibility:hidden;">התשובה נשמרה</asp:Label>
            </div>
        </div>
        <hr class="style11 hidequestion" qid="1">

        <!-- Question 2 -->


        <div class="hideme question hidequestion scrollQ2" qid="2">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מי החבר או החברה הטובים שלכם</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה ו/או <br /> רשמו תשובה<br /> בתיבה </span>
                </button>
            </div>
            <div class="share-post" style="margin-top:30px !important"> 
                <span style="margin-bottom: 20px;">מה אתם אוהבים לעשות איתם?</span>
                    <asp:TextBox id="connectedtoQuestion2" type="text" class="form-control" runat="server" Rows="1" TextMode="MultiLine"></asp:TextBox>      
               </div>        
            <div class="form-group section-container">
                <span>הוסיפו תמונה שלכם איתם</span>  
                <div id="2" class="wrapper-upload">
                    <button id="up-img2" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic2" runat="server" accept="images/*" hidden></asp:FileUpload>
                </div>
            </div>
                <div class="form-group section-container">
                    <asp:Button class="btn btn-outline-primary-1 left_side_share_btn" type="button" runat="server" id="shareConn2" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
            <asp:Label id="Message2" runat="server" style="color:red; visibility:hidden;">נא להעלות תמונה וגם להזין את התשובה בתיבה</asp:Label>
                    <asp:Label id="Answer_Saved2" runat="server" style="color:red; visibility:hidden;">התשובה נשמרה</asp:Label>
            </div>

        </div>
        <hr class="style11 hidequestion" qid="2">

        <!-- Question 3 -->

        <div id="3" class="hideme question hidequestion scrollQ3" qid="3">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה אתם אוהבים לעשות בזמן הפנוי שלכם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool">רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט </span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText3" rows="1" class="form-control auto_height"></textarea>
                </div>
            </div>
            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question3" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart3val1" class="heart"></span>
                                    <input type="radio" name="q3" value="1">
                                    <img id="imgRadio3val1" class="radio-picture hover-shadow" src="../images/backgrounds/defocused-image-of-lights.jpg">
                                </label>

                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart3val2" class="heart"></span>
                                    <input type="radio" name="q3" value="2">
                                    <img id="imgRadio3val2" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artificial-artistic-131634.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart3val3" class="heart"></span>

                                    <input type="radio" name="q3" value="3">

                                    <img id="imgRadio3val3" class="radio-picture hover-shadow" src="../images/backgrounds/close-up-of-silhouette-against-blue-sky-311039.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart3val4" class="heart"></span>
                                    <input type="radio" name="q3" value="4">
                                    <img id="imgRadio3val4" class="radio-picture hover-shadow" src="../images/backgrounds/pink-clouds.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

         <div class="form-group section-container">
                    <asp:Button class="btn btn-outline-primary-1 left_side_share_btn radios-set" id="share3"  runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>  
             </div>
            <div class="share-post">
                <span id="Message3" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="3">

        <!-- Question 4 -->

        <div class="hideme question hidequestion scrollQ4" qid="4">
            <asp:HiddenField ID="HiddenField4" runat="server" Value="not checked" />

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה מצחיק אתכם? או גורם לכם לחייך?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool">לחצו על <br /> אחת מהאופציות <br /> או העלו תמונה </span>
                </button>
            </div>

            <div class="justify-content-center form-group section-container">
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question1" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart4val1" class="heart"></span>
                                    <input type="radio" name="q4" value="1">
                                    <img id="imgRadio4val1" class="radio-picture hover-shadow" src="../images/funnyQuestion/woman-wearing-black-dress-shirt-eating-popcorn-1040159.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart4val2" class="heart"></span>
                                    <input type="radio" name="q4" value="2">
                                    <img id="imgRadio4val2" class="radio-picture hover-shadow" src="../images/funnyQuestion/close-up-photo-of-dog-wearing-sunglasses-1629781.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart4val3" class="heart"></span>
                                    <input type="radio" name="q4" value="3">
                                    <img id="imgRadio4val3" class="radio-picture hover-shadow" src="../images/funnyQuestion/group-of-people-sitting-on-white-mat-on-grass-field-745045.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart4val4" class="heart"></span>
                                    <input type="radio" name="q4" value="4">
                                    <img id="imgRadio4val4" class="radio-picture hover-shadow" src="../images/funnyQuestion/white-and-yellow-roller-coaster-749064.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="question-text">
                    <span>לא אחת מהתשובות?</span>
                    <span>העלו תמונה משלכם</span>
                </div>

                <div id="4" class="wrapper-upload">
                    <button id="up-img4" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic4" runat="server" accept="images/*" hidden></asp:FileUpload>
                </div>
                <asp:Button id="share4" type="button" class="btn btn-outline-primary-1 left_side_share_btn radio-quest"  runat="server" OnClick="savePictoFolderRadio" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label id="Message4" runat="server" style="color:red; visibility:hidden;">נא להעלות תמונה או לבחור מבין האופציות</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="4">

        <!-- Question 5 -->

        <div class="hideme question hidequestion scrollQ5" qid="5">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה האוכל האהוב עליכם ומה פחות?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>

            <div class="form-group section-container">
                <div id="favorate_container" class="flex-row">
                    <div class="upload-emotional-image">
                        <div id="5q1" class="wrapper-upload">
                            <button id="up-img5q1" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic5q1" runat="server" accept="images/*" hidden></asp:FileUpload>
                        </div>
                        <button class="emotional-btn btn btn-outline-danger" type="button">
                            <img src="../images/stories/like.png" style="width:30%" class="likes-hover" />
                        </button>

                    </div>
                    <div class="upload-emotional-image">
                        <div id="5q2" class="wrapper-upload">
                            <button id="up-img5q2" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic5q2" runat="server" accept="images/*" hidden></asp:FileUpload>
                        </div>

                        <button class="emotional-btn btn btn-outline-danger" type="button">
                            <img src="../images/stories/dislike.png" style="width:30%" class="likes-hover" />
                        </button>
                    </div>
                </div>
                <asp:Button id="sharelike5" type="button" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message5" style="color:red; visibility:hidden;">נא להעלות שתי תמונות</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="5">

        <!-- Question 6 -->

        <div class="hideme question hidequestion scrollQ6" qid="6">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה אתם הכי אוהבים לראות בטלוויזיה?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> לחצו על<br /> אחד משני <br /> האופציות וגם <br />רשמו תשובה <br /> בתיבה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div class="flex-row">
                    <label>
                        <input type="radio" name="q6" class="card-input-element" value="1" />
                        <span id="quiz-1" class="panel panel-default card-input card card-body bg-light red-quiz">
                            <span id="q6val1" class="panel-heading red-text">סדרות</span>
                            <img id="imgRadio6val1" src="../images/quiz-questions/shows.png" class="dont-show-heart" style="display:none" />
                        </span>
                    </label>
                    <label>
                        <input type="radio" name="q6" class="card-input-element" value="2" />
                        <span id="quiz-2" class="panel panel-default card-input card card-body bg-light green-quiz">
                            <span id="q6val2" class="panel-heading green-text">סרטים</span>
                            <img id="imgRadio6val2" src="../images/quiz-questions/movies.jpg" class="dont-show-heart" style="display:none" />
                        </span>
                    </label>
                </div>
            </div>
            <div class="share-post">
                <span>שתפו אותנו בסרט או בסדרה האהובים עליכם</span>
                <div class="input-group post-inputs">
                    <textarea id="SharedText6" rows="1" class="form-control auto_height"></textarea>
                </div>
                 </div>                   
            <div class="input-group post-inputs">
             <asp:Button id="share6" class="btn btn-outline-primary-1 left_side_share_btn quiz-question"  runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <span id="Message6" style="color:red; visibility:hidden;">נא לענות על הסקר וגם להזין את התשובה בתיבה</span>
                </div>
            </div>
        <hr class="style11 hidequestion" qid="6">

        <!-- Question 7 -->

      <div class="hideme question hidequestion hidequestion scrollQ7" qid="7">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה מרגיע אתכם?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool">בחרו תמונה <br /> מתאימה <br /> או רשמו תשובה<br /> בתיבה </span>
                </button>
            </div>
            <div class="justify-content-center form-group section-container">
                <span>בחרו אחת מהתשובות</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question7" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart7val1" class="heart"></span>
                                    <input type="radio" name="q7" value="1">
                                    <img id="imgRadio7val1" class="radio-picture hover-shadow" src="../images/relaxQuestion/beach-beautiful-blue-clear-water-279574.png">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart7val2" class="heart"></span>
                                    <input type="radio" name="q7" value="2">
                                    <img id="imgRadio7val2" class="radio-picture hover-shadow" src="../images/relaxQuestion/close-up-photography-of-person-wearing-pink-house-slippers-1444417.png">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart7val3" class="heart"></span>
                                    <input type="radio" name="q7" value="3">
                                    <img id="imgRadio7val3" class="radio-picture hover-shadow" src="../images/relaxQuestion/people-walking-on-seashore-2102650.png">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart7val4" class="heart"></span>
                                    <input type="radio" name="q7" value="4">
                                    <img id="imgRadio7val4" class="radio-picture hover-shadow" src="../images/relaxQuestion/photo-of-a-boy-listening-in-headphones-1490844.png">
                                </label>
                            </div>
                        </div>
                    </div>
                 <div class="question-text">
                    <span>לא אחת מהתשובות?</span>
                    <span>שתפו אותנו</span>
                </div>
                </div>
            </div>

              <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText7" rows="1" class="form-control auto_height"></textarea>
                    </div>
               </div>


                <div class="input-group post-inputs">
                    <asp:Button id="share7" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>    
            <div class="share-post">
                <span id="Message7" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>
        <hr class="style11 hidequestion" qid="7">

        <!-- Question 8 -->
        <div class="hideme question hidequestion scrollQ8" qid="8">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה אתם הכי אוהבים בבית הספר ומה פחות?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="favorate_container" class="flex-row">
                    <div class="upload-emotional-image">
                        <div id="8q1" class="wrapper-upload">
                            <button id="up-img8q1" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic8q1" runat="server" accept="images/*" hidden></asp:FileUpload>
                        </div>
                        <div class="column">
                            <label>
                                <button class="emotional-btn  btn btn-outline-danger" type="button">
                                    <img src="../images/stories/like.png" style="width:30%" class="likes-hover" />
                                </button>
                            </label>
                        </div>
                    </div>
                    <div class="upload-emotional-image">
                        <div id="8q2" class="wrapper-upload">
                            <button id="up-img8q2" class="no-image img-result-small" onclick="return false;">Upload Image</button>
                            <asp:FileUpload id="uploderPic8q2" runat="server" accept="images/*" hidden></asp:FileUpload>
                        </div>
                        <button class="emotional-btn btn btn-outline-danger" type="button">
                            <img src="../images/stories/dislike.png" style="width:30%" class="likes-hover" />
                        </button>
                    </div>
                </div>
                <asp:Button id="sharelike8" class="btn btn-outline-primary-1 left_side_share_btn" runat="server" OnClick="savePictoFolder"  Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                 <asp:Label runat="server" id="Message8" style="color:red; visibility:hidden;">נא להעלות שתי תמונות</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="8">

        <!-- Question 9 -->

        <div class="hideme question hidequestion hidequestion scrollQ9" qid="9">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>למה אתם צריכים להגיע לבית החולים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool">רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט </span>
                </button>
            </div>
                        <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText9" rows="1" class="form-control auto_height"></textarea>
                    </div>
                            </div>
            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question1" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart9val1" class="heart"></span>
                                    <input type="radio" name="q9" value="1">
                                    <img id="imgRadio9val1" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artistic-background-310452.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart9val2" class="heart"></span>
                                    <input type="radio" name="q9" value="2">
                                    <img id="imgRadio9val2" class="radio-picture hover-shadow" src="../images/backgrounds/close-up-of-silhouette-against-blue-sky-311039.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart9val3" class="heart"></span>
                                    <input type="radio" name="q9" value="3">
                                    <img id="imgRadio9val3" class="radio-picture hover-shadow" src="../images/backgrounds/white-headphone-1037992.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart9val4" class="heart"></span>
                                    <input type="radio" name="q9" value="4">
                                    <img id="imgRadio9val4" class="radio-picture hover-shadow" src="../images/backgrounds/red-glittered-wallpaper-751373.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <asp:Button id="share9" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>    
            <div class="share-post">
                <span id="Message9" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="9">

        <!-- Question 10-->

            <div class="hideme question hidequestion scrollQ10" qid="10">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>לפני ההגעה לבית החולים יכולות לעלות בנו כל מני שאלות.
איזה שאלות הייתם רוצים לשאול את הצוותים ביחס לטיפול/ מחלקה/ אשפוז?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט </span>
                </button>
            </div>
                                    <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText10" rows="2" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">
                                    <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question10" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart10val1" class="heart"></span>
                                    <input type="radio" name="q10" value="1">
                                    <img id="imgRadio10val1" class="radio-picture hover-shadow" src="../images/backgrounds/birch-tree-6055.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart10val2" class="heart"></span>
                                    <input type="radio" name="q10" value="2">
                                    <img id="imgRadio10val2" class="radio-picture hover-shadow" src="../images/backgrounds/mini-red-hearts-wallpaper-776635.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart10val3" class="heart"></span>
                                    <input type="radio" name="q10" value="3">
                                    <img id="imgRadio10val3" class="radio-picture hover-shadow" src="../images/backgrounds/pink-clouds.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart10val4" class="heart"></span>
                                    <input type="radio" name="q10" value="4">
                                    <img id="imgRadio10val4" class="radio-picture hover-shadow" src="../images/backgrounds/white-red-and-yellow-citrus-fruits-1415734.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                     <asp:Button id="share10" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message10" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="10">

        <!-- Question 11 -->

        <div class="hideme question hidequestion scrollQ11" qid="11">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>בני כמה אתם? מה מקומכם במשפחה? בכורים? בני זקונים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט </span>
                </button>
            </div>

                                    <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText11" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">
                                    <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question1" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart11val1" class="heart"></span>
                                    <input type="radio" name="q11" value="1">
                                    <img id="imgRadio11val1" class="radio-picture hover-shadow" src="../images/backgrounds/sunrise-5572962_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart11val2" class="heart"></span>
                                    <input type="radio" name="q11" value="2">
                                    <img id="imgRadio11val2" class="radio-picture hover-shadow" src="../images/backgrounds/moon-5307922_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart11val3" class="heart"></span>
                                    <input type="radio" name="q11" value="3">
                                    <img id="imgRadio11val3" class="radio-picture hover-shadow" src="../images/backgrounds/flower-5459972_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart11val4" class="heart"></span>
                                    <input type="radio" name="q11" value="4">
                                    <img id="imgRadio11val4" class="radio-picture hover-shadow" src="../images/backgrounds/red-glittered-wallpaper-751373.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                     <asp:Button id="share11" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message11" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="11">

        <!-- Question 12 -->

        <div class="hideme question hidequestion not-showing scrollQ12" qid="12">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>היכן אתם גרים? ספרו משהו מעניין על העיר שאתם גרים בה</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט </span>
                </button>
            </div>
            <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText12" rows="1" class="form-control auto_height"></textarea>
                    </div>
                </div>

            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question1" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart12val1" class="heart"></span>
                                    <input type="radio" name="q12" value="1">
                                    <img id="imgRadio12val1" class="radio-picture hover-shadow" src="../images/backgrounds/black-portable-speaker-1044989.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart12val2" class="heart"></span>
                                    <input type="radio" name="q12" value="2">
                                    <img id="imgRadio12val2" class="radio-picture hover-shadow" src="../images/backgrounds/dandelion-5302188_640.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart12val3" class="heart"></span>
                                    <input type="radio" name="q12" value="3">
                                    <img id="imgRadio12val3" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-background-carpentry-construction-268976.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6 col-lg-3">
                                <label>
                                    <span id="heart12val4" class="heart"></span>
                                    <input type="radio" name="q12" value="4">
                                    <img id="imgRadio12val4" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-architecture-art-background-242616.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                     <asp:Button id="share12" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message12" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>
        </div>


        <hr class="style11 hidequestion" qid="12">

        <!-- Question 13 -->

        <div class="hideme question hidequestion scrollQ13" qid="13">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>איזה צבע אתם הכי אוהבים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> בחרו תשובה<br /> בלחיצה על <br /> אחד מהאופציות<br /> ורשמו תשובה <br /> בתיבה</span>
                </button>
            </div>
            <div class="form-group justify-content-center form-group section-container">
                <div class="flex-row q-row">

                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="1">
                            <img id="imgRadio13val1" src="../images/colors/color1.png" class="hover-shadow end-section-emoji dont-show-heart">
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="2">
                            <img id="imgRadio13val2" src="../images/colors/color2.png" class="hover-shadow end-section-emoji dont-show-heart">
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="3">
                            <img id="imgRadio13val3" src="../images/colors/color3.png" class="hover-shadow end-section-emoji dont-show-heart">
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="4" />
                            <img id="imgRadio13val4" src="../images/colors/color4.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="5" />
                            <img id="imgRadio13val5" src="../images/colors/color5.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="6" />
                            <img id="imgRadio13val6" src="../images/colors/color6.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        </label>
                    </div>
                    <div class="col">
                        <label>
                            <input type="radio" name="q13" value="7" />
                            <img id="imgRadio13val7" src="../images/colors/color7.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        </label>
                    </div>
                </div>
            </div>

            <div class="share-post">
                <span>מה הוא מזכיר לכם?</span>
                <div class="input-group post-inputs">
                    <textarea id="SharedText13" rows="1" class="form-control auto_height"></textarea>
                </div>     
            </div>
                <div class="input-group post-inputs">
                     <asp:Button id="share13" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set" runat="server" OnClientClick="return false;" Text="שתפו"></asp:Button>
                </div>
            <div class="share-post">
                <span id="Message13" style="color:red; visibility:hidden;">נא לבחור צבע וגם להזין את התשובה בתיבה</span>
                </div>
            </div>


        <hr class="style11 hidequestion" qid="13" />


        <!-- End Familiarity Section-->
        <div class="section-container problemshow scrollQ14" qid="14">
            <h3 id="end_story_title" class="text-center">סיימתם את פרק הכרות!</h3>
            <p class="text-center">בחרו emoji המתאר</p>
            <h5 class="text-center">איך אתם מרגישים עד עכשיו?</h5>
            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q14" value="1" />
                        <img id="imgRadio14val1" src="../images/emoji/emoji0.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>מבוהל</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label> 
                        <figure>
                        <input type="radio" name="q14" value="2" />
                        <img id="imgRadio14val2" src="../images/emoji/emoji1.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>עצוב</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q14" value="3" />
                        <img id="imgRadio14val3" src="../images/emoji/emoji2.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        <figcaption>רגוע</figcaption>
                        </figure>
                    </label>
                </div>
                </div>
                            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q14" value="4" />
                        <img id="imgRadio14val4" src="../images/emoji/emoji3.png" class="hover-shadow end-section-emoji dont-show-heart" />
                             <figcaption>מתרגש</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>   
                        <figure>
                        <input type="radio" name="q14" value="5" />
                        <img id="imgRadio14val5" src="../images/emoji/emoji4.png" class="hover-shadow end-section-emoji dont-show-heart" />
                       <figcaption>כועס</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>  
                        <figure>
                        <input type="radio" name="q14" value="6" />
                        <img id="imgRadio14val6" src="../images/emoji/emoji5.png" class="hover-shadow end-section-emoji dont-show-heart" />
                          <figcaption>סקרן</figcaption>
                        </figure>
                    </label>
                </div>
            </div>
            <h5 class="text-center">מה היא הסיבה?</h5>
        <div class="share-post">
            <div class="input-group post-inputs">
                <textarea id="SharedText14" rows="1" class="form-control auto_height"></textarea>
            </div>
            <div class="input-group post-inputs">
            <button id="share14" type="button" class="btn btn-outline-primary-1 radios-set" style="margin-left:15px">שתפו</button>             
            <button type="button" class="btn btn-outline-primary-opessite" onclick="location.href='../end-episode.html';">סיום פרק וצפייה ב-story</button>
            </div>
            <span id="Message14" style="color:red; visibility:hidden;">נא לבחור emoji וגם להזין את התשובה בתיבה</span>

        </div>
    </div>
    </div>
            <footer class="card-footer bg-white">
        <p>תוצר זה פותח במסגרת פרויקט גמר לתואר ראשון ב<a href="https://www.hit.ac.il/telem/B.A">פקולטה לטכנולוגיות למידה</a>, HIT מכון טכנולוגי חולון</p>
    </footer>
    </form>
</body>
</html>
