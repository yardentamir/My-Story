<%@ Page Language="C#" AutoEventWireup="true" CodeFile="release.aspx.cs" Inherits="stories_stages_release" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>פרק שחרור</title>
    <meta name="description" content="הפרק האחרון שנועד לגלות את רגשות,חוויות המטופל בסיום הליך האשפוז" />
    <meta name="keywords" content=",החלמה,שחרור,הביתה,סיום טיפול,פרק אחרון" />
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
    <form id="form1" runat="server">
<div class="containerbox fix-the-top-containers" dir="rtl" style="padding-bottom:70px">
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
                    <a id="Episode-link2" class="nav-link nav-link-text" href="#">אשפוז</a>
                </li>
                <li class="nav-item story-nav-item">
                    <a id="Episode-link3" class="nav-link nav-link-text active" href="#">שחרור</a>
                </li>
            </ul>

            <!-- stories row -->
            <div class="scroll-container" style="margin-top:1.3%">
                <div class="scroll">
                    <div id="story40" class="currentStory hidequestion" qid="40">
                        <img id="currentImg40" />
                    </div>
                    <div id="story41" class="currentStory hidequestion" qid="41">
                        <img id="currentImg41" />
                    </div>
                    <div id="story42" class="currentStory hidequestion" qid="42">
                        <img id="currentImg42" />
                    </div>
                    <div id="story43" class="currentStory hidequestion" qid="43">
                        <img id="currentImg43" />
                    </div>
                    <div id="story44" class="currentStory hidequestion" qid="44">
                        <img id="currentImg44" />
                    </div>
                    <div id="story45" class="currentStory hidequestion" qid="45">
                        <img id="currentImg45" />
                    </div>
                    <div id="story46" class="currentStory" qid="46">
                        <img id="currentImg46" />
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
                    <h5 id="review_title">ברוכים הבאים לפרק Story שחרור</h5>
                    <p>
                        סוף סוף זה מאחוריכם ואתם משתחררים,
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

        <hr class="style11 scrollTarget" />
<%--we used hidden field to send variables from C# to JS--%>
    <asp:HiddenField ID="idOfUser" runat="server" value="" /> 
    <asp:HiddenField ID="AllDataJson" runat="server" value=""/>
    <asp:HiddenField ID="ifPostback" runat="server" value=""/>
    <asp:HiddenField ID="postbackScrolltoQ" runat="server" value=""/>
    <asp:HiddenField ID="ScrollToNextQ" runat="server" value=""/>
    <asp:HiddenField ID="LastQ" runat="server" value="46"/>
        <asp:ImageButton ID="grayBackground" ImageUrl="../images/backgrounds/gray-background.png" style="display:none" runat="server" />

        <!-- Question 1 -->

        <div class="hideme question hidequestion scrollQ40" qid="40">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה הדבר הראשון שתעשו כשתצאו מכאן?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png" />
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText40" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question40" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart40val1" class="heart"></span>
                                    <input type="radio" name="q40" value="1" />
                                    <img id="imgRadio40val1" class="radio-picture hover-shadow" src="../images/backgrounds/red-glittered-wallpaper-751373.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart40val2" class="heart"></span>
                                    <input type="radio" name="q40" value="2" />
                                    <img id="imgRadio40val2" class="radio-picture hover-shadow" src="../images/backgrounds/black-and-silver-film-camera-on-brown-wooden-surface-733853.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart40val3" class="heart"></span>
                                    <input type="radio" name="q40" value="3" />
                                    <img id="imgRadio40val3" class="radio-picture hover-shadow" src="../images/backgrounds/black-portable-speaker-1044989.jpg" />
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart40val4" class="heart"></span>
                                    <input type="radio" name="q40" value="4" />
                                    <img id="imgRadio40val4" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-architecture-art-background-242616.jpg" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share40" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div> 
            <div class="share-post">
                <span id="Message40" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="40">

        <!-- Question 2 -->

        <div class="hideme question hidequestion scrollQ41" qid="41">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>מה עוד נדרש מכם לעשות כדי להחלים?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText41" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container"> 
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question1" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart41val1" class="heart"></span>
                                    <input type="radio" name="q41" value="1">
                                    <img id="imgRadio41val1" class="radio-picture hover-shadow" src="../images/backgrounds/white-headphone-1037992.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart41val2" class="heart"></span>
                                    <input type="radio" name="q41" value="2">
                                    <img id="imgRadio41val2" class="radio-picture hover-shadow" src="../images/backgrounds/mini-red-hearts-wallpaper-776635.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart41val3" class="heart"></span>
                                    <input type="radio" name="q41" value="3">
                                    <img id="imgRadio41val3" class="radio-picture hover-shadow" src="../images/backgrounds/white-red-and-yellow-citrus-fruits-1415734.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart41val4" class="heart"></span>
                                    <input type="radio" name="q41" value="4">
                                    <img id="imgRadio41val4" class="radio-picture hover-shadow" src="../images/backgrounds/blue-lined-flat-surface-132204.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share41" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>  
            <div class="share-post">
                <span id="Message41" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="41">

        <!-- Question 3 -->

        <div class="hideme question hidequestion scrollQ42" qid="42">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>ספרו איך המרגש להיות אחרי הטיפול והאשפוז</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> רשמו תשובה <br /> בתיבה <br /> ו/או בחרו<br /> רקע לפוסט</span>
                </button>
            </div>
                      <div class="share-post">
                <div class="input-group post-inputs">
                    <textarea id="SharedText42" rows="1" class="form-control auto_height"></textarea>
                    </div>
             </div>

            <div class="justify-content-center form-group section-container">
                <span>בחרו רקע לפוסט</span>
                <div id="content" class="border-light text-center">
                    <div class="card-body">
                        <div id="question42" class="row w-100 mx-auto">
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart42val1" class="heart"></span>
                                    <input type="radio" name="q42" value="1">
                                    <img id="imgRadio42val1" class="radio-picture hover-shadow" src="../images/backgrounds/pink-clouds.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart42val2" class="heart"></span>
                                    <input type="radio" name="q42" value="2">
                                    <img id="imgRadio42val2" class="radio-picture hover-shadow" src="../images/backgrounds/background-design-floor-hardwood-235992.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart42val3" class="heart"></span>
                                    <input type="radio" name="q42" value="3">
                                    <img id="imgRadio42val3" class="radio-picture hover-shadow" src="../images/backgrounds/abstract-art-artistic-background-310452.jpg">
                                </label>
                            </div>
                            <div class="column col-6 col-sm-6  col-lg-3">
                                <label>
                                    <span id="heart42val4" class="heart"></span>
                                    <input type="radio" name="q42" value="4">
                                    <img id="imgRadio42val4" class="radio-picture hover-shadow" src="../images/backgrounds/birch-tree-6055.jpg">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                <div class="input-group post-inputs">
                    <button id="share42" type="button" class="btn btn-outline-primary-1 left_side_share_btn radios-set">שתפו</button>
                </div>
            <div class="share-post">
                <span id="Message42" style="color:red; visibility:hidden;">נא לבחור רקע לפוסט וגם להזין את התשובה בתיבה</span>
            </div>

        </div>

        <hr class="style11 hidequestion" qid="42">

        <!-- Question 4 -->

        <div class="hideme question hidequestion scrollQ43" qid="43">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>התמונה הכי שווה שצילמתם אחרי שיצאתם מבית החולים אל העולם שבחוץ</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="43" class="wrapper-upload">
                    <button id="up-img43" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic43" type="file" accept="images/*" hidden  runat="server"></asp:FileUpload>
                </div>
                 <asp:Button id="share43" type="button" class="btn btn-outline-primary-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                   <asp:Label runat="server" id="Message43" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="43">

        <!-- Question 5 -->

        <div class="hideme question hidequestion scrollQ44" qid="44">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>ביקרתם במרחב החינוכי?</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> בחרו תשובה<br /> בלחיצה על <br /> אחד מהאופציות<br /> ורשמו תשובה <br /> בתיבה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="visited_tabs" class="flex-row">
                    <label>
                        <input type="radio" name="q44" class="card-input-element" value="1" />
                        <span id="quiz-1" class="panel panel-default card-input card card-body bg-light red-quiz">
                            <span id="q44val1" class="panel-heading red-text">לא</span>
                        </span>
                        <img id="imgRadio44val1" src="../images/quiz-questions/no.png" class="dont-show-heart" style="display:none" />
                    </label>
                    <label>
                        <input type="radio" name="q44" class="card-input-element" value="2" />
                        <span id="quiz-2" class="panel panel-default card-input card card-body bg-light green-quiz">
                            <span id="q44val2" class="panel-heading green-text">כן</span>
                        </span>
                        <img id="imgRadio44val2" src="../images/quiz-questions/yes.png" class="dont-show-heart" style="display:none" />
                    </label>
                </div>
            </div>

            <div class="share-post">
                <span>מה הכי אהבתם שם ומה הכי פחות?</span>
                <div class="input-group post-inputs">
                    <textarea id="SharedText44" rows="1" class="form-control auto_height"></textarea>
                </div>
            </div>   
            <div class="input-group post-inputs">
<button id="share44" type="button" class="btn btn-outline-primary-1 left_side_share_btn quiz-question">שתפו</button>
                </div>  
            <div class="share-post">
            <span id="Message44" style="color:red; visibility:hidden;">נא לענות על הסקר וגם להזין את התשובה בתיבה</span>
            </div>
        </div>
        <hr class="style11 hidequestion" qid="44">


        <!-- Question 6 -->

        <div class="hideme question hidequestion scrollQ45" qid="45">

            <div class="flex-row margin-story-question">
                <div class="story-image position-absolute"></div>
                <div class="question-text-top">
                    <span>פרגנו בסלפי שממחיש איך אתם מסכמים את האשפוז</span>
                </div>
                <button type="button" class="btn btn-outline-danger btn-help">
                    <img id="btn_img" src="../images/questions.png">
                    <span class="tool"> העלו תמונה<br /> בלחיצה על <br /> המצלמה</span>
                </button>
            </div>
            <div class="form-group section-container">
                <div id="45" class="wrapper-upload">
                    <button id="up-img45" class="no-image img-result" onclick="return false;">Upload Image</button>
                    <asp:FileUpload id="uploderPic45" type="file" accept="images/*" hidden runat="server"></asp:FileUpload>
                </div>
                <asp:Button id="share45" type="button" class="btn btn-outline-primary-1 left_side_share_btn share-pic" runat="server" OnClick="savePictoFolder" Text="שתפו"></asp:Button>
            </div>
            <div class="share-post">
                <asp:Label runat="server" id="Message45" style="color:red; visibility:hidden;">נא להעלות תמונה</asp:Label>
            </div>
        </div>

        <hr class="style11 hidequestion" qid="45">

        <!-- End Release Section -->

        <div class="section-container problemshow scrollQ46" qid="46">
            <h3 id="end_story_title" class="text-center">סיימתם את פרק שחרור!</h3>
            <p class="text-center">בחרו emoji המתאר</p>
            <h5 class="text-center">איך אתם מרגישים עד עכשיו?</h5>
            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q46" value="1" />
                        <img id="imgRadio46val1" src="../images/emoji/emoji0.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>מבוהל</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label> 
                        <figure>
                        <input type="radio" name="q46" value="2" />
                        <img id="imgRadio46val2" src="../images/emoji/emoji1.png" class="hover-shadow end-section-emoji dont-show-heart" />
                            <figcaption>עצוב</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q46" value="3" />
                        <img id="imgRadio46val3" src="../images/emoji/emoji2.png" class="hover-shadow end-section-emoji dont-show-heart" />
                        <figcaption>רגוע</figcaption>
                        </figure>
                    </label>
                </div>
                </div>
                            <div class="flex-row q-row" style="text-align: center;">
                <div class="col col-auto col-3 centered">
                    <label>
                        <figure>
                        <input type="radio" name="q46" value="4" />
                        <img id="imgRadio46val4" src="../images/emoji/emoji3.png" class="hover-shadow end-section-emoji dont-show-heart" />
                             <figcaption>מתרגש</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>   
                        <figure>
                        <input type="radio" name="q46" value="5" />
                        <img id="imgRadio46val5" src="../images/emoji/emoji4.png" class="hover-shadow end-section-emoji dont-show-heart" />
                       <figcaption>כועס</figcaption>
                        </figure>
                    </label>
                </div>
                <div class="col col-auto col-3 centered">
                    <label>  
                        <figure>
                        <input type="radio" name="q46" value="6" />
                        <img id="imgRadio46val6" src="../images/emoji/emoji5.png" class="hover-shadow end-section-emoji dont-show-heart" />
                          <figcaption>סקרן</figcaption>
                        </figure>
                    </label>
                </div>
            </div>
            <h5 class="text-center">מה היא הסיבה?</h5>
        <div class="share-post">
            <div class="input-group post-inputs">
                <textarea id="SharedText46" rows="1" class="form-control auto_height"></textarea>
            </div>
            <div class="input-group post-inputs">
            <button id="share46" type="button" class="btn btn-outline-primary-1 radios-set" style="margin-left:15px">שתפו</button>             
            <button type="button" class="btn btn-outline-primary-opessite" onclick="location.href='../end-episode.html';">סיום פרק וצפייה ב-story</button>
            </div>
            <span id="Message46" style="color:red; visibility:hidden;">נא לבחור emoji וגם להזין את התשובה בתיבה</span>

        </div>
    </div> 
     <footer class="card-footer bg-white">
        <p>תוצר זה פותח במסגרת פרויקט גמר לתואר ראשון ב<a href="https://www.hit.ac.il/telem/B.A">פקולטה לטכנולוגיות למידה</a>, HIT מכון טכנולוגי חולון</p>
    </footer>
    </form>
</body>
</html>
