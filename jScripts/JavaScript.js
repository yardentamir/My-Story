
$(document).ready(function () {

    sessionStorage.setItem('ifHtmlPage', ''); // for handlers paths - when html '' when c# '../'

    // if c# pages use ../ as a path
    if ($(".question").length > 0) {
        sessionStorage.setItem('ifHtmlPage', '../');
    }

    //גולל למעטה עם חץ//
    $(".arrow-down").click(function () {
        $('html, body').animate({
            scrollTop: ($(".scrollTarget").offset().top) - 140
        }, 1500);
    });
    // do heart animation when selected img
    $(".heart").click(function () {
        $(this).toggleClass("animate");
    });

    // blocks special characters - ":{}, do problem 
    $("input[type=text]").keypress(function (event) {
        var character = String.fromCharCode(event.keyCode);
        return isValid(character);
    });

    function isValid(str) {
        return !/[~`@#$%\^&*()+=\-\[\]\\';,/{}|\\":<>]/g.test(str);
    }

    // חשיפת דיב בגלילה
    /* Every time the window is scrolled ... */
    $(window).scroll(function () {

        /* Check the location of each desired element */
        $('.hideme').each(function () {
            var bottom_of_object = $(this).position().top;
            var bottom_of_window = $(window).scrollTop();
            if ($(this).hasClass("problemshow")) { // יש בעיה עם שאלות מסוימות בגלילה אז זה מפצה על זה
                bottom_of_object = (bottom_of_object - 300);
            }
            /* If the object is completely visible in the window, fade it it */
            if (bottom_of_window > (bottom_of_object - 400)) { // ה100 בשביל שיחשף קצת לפני כי זה נוח יותר
                $(this).animate({ 'opacity': '1' }, 1000);
            }
        });
    });

    // onload function that check if admin or not // admin ID = 1
    if ($('#hello').length > 0) { // if all pages but not login page
    }
    else {
        $('#idOfUser').val((JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID);
        if ((JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID == "1") {
            $('.only-admin').show();
        } else {
            $('.only-admin').hide();
        }
    }

    // clear stories circles before show
    $("[class='currentStory']").each(function (index, value) {
        var me = value;
        var getId = me.id;
        var num = getId.substring(5);
        if ($("#currentImg" + num).length > 0) {
            $("#currentImg" + num).removeAttr('src');
        }
    });

    // show the relevant questions to the user
    if ($(".currentStory").length > 0) { // run on page end-episode and the episode pages
        var questionstring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].QuestionShow;
        var questionarray = questionstring.split(",");
        if (questionstring.length > 1) {
            $.each(questionarray, function (index, value) {
                $(".question[qid=" + value + "]").removeClass("hidequestion");
                $(".style11[qid=" + value + "]").removeClass("hidequestion");
                $(".currentStory[qid=" + value + "]").removeClass("hidequestion");
            });
        }

        // update session from hiddenfield
        if ($(".question").length > 0) {
            var data = $("#AllDataJson").val();
            if (data.length > 0) {
                var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
            }

            // href links to opened episodes
            var episodestring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].EpisodeShow;
            if (episodestring.length >= 1) {
                var episodearray = episodestring.split(",");
                $.each(episodearray, function (index, value) {
                    if (value == "1") {
                        document.getElementById("Episode-link" + value).href = "familiarity.aspx";
                    } else if (value == "2") {
                        document.getElementById("Episode-link" + value).href = "hospitalization.aspx";
                    } else if (value == "3") {
                        document.getElementById("Episode-link" + value).href = "release.aspx";
                    }
                });
            }
        }

        //show circles story progress
        for (i = 1; i < (JSON.parse(sessionStorage.getItem('mapDataSession'))).length; i++) {
            var QNum = (JSON.parse(sessionStorage.getItem('mapDataSession')))[i].QuestionId;
            var PicOptions = (JSON.parse(sessionStorage.getItem('mapDataSession')))[i].PicOptions;
            var SharedPic = (JSON.parse(sessionStorage.getItem('mapDataSession')))[i].SharedPic;

            if (PicOptions != "") {
                $('#currentImg' + QNum).attr("src", PicOptions);
            }
            if (SharedPic != "") {
                if (SharedPic.includes("|")) {
                    var likesArr = SharedPic.split("|");
                    $('#currentImg' + QNum).attr("src", sessionStorage.getItem('ifHtmlPage') + likesArr[0]);
                } else {
                    $('#currentImg' + QNum).attr("src", sessionStorage.getItem('ifHtmlPage') + SharedPic);
                }
            }
        }
        // clear hiddenfield
        if ($(".question").length > 0) {
            $("#AllDataJson").val("");
        }
    }

    // lock or unlock episodes
    if ($(".unlock").length > 0) {
        var episodestring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].EpisodeShow;
        if (episodestring.length >= 1) {
            var episodearray = episodestring.split(",");
            $.each(episodearray, function (index, value) {
                $(".unlock[eid=" + value + "]").show();
                $(".lock[eid=" + value + "]").hide();
                $(".ep-btn[eid=" + value + "]").prop('disabled', false);
            });
        }
    }

    // hide before show episode in end episodes page
    if ($("#EpisodePageBTN").length > 0) {
        for (i = 1; i < 4; i++) {
            $('#end-episode' + i).hide();
        }
    }

    // show the open episodes in end episodes page
    if ($("#EpisodePageBTN").length > 0) {
        var episodestring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].EpisodeShow;
        if (episodestring.length >= 1) {
            var episodearray = episodestring.split(",");
            $.each(episodearray, function (index, value) {
                $('#end-episode' + value).show();
            });
        }
    }

    $('#SharedText7').on('input', function () {
        for (i = 1; i < ($("input[name = q7]").length + 1); i++) {
            $("input[name = q7][value =" + i + "]").prop("checked", false);
        }
    });

    // shows the picture uploded in the camera picture
    $('.wrapper-upload').click(function () { // פונקציה שמראה את התמונה שמעלים
        var num = $(this).attr("id");
        var qnumlikes;
        if (num.includes("q")) {
            if (num.length < 4) {
                qnumlikes = num.substring(0, 1);
            } else {
                qnumlikes = num.substring(0, 2);
            }
        } else {
            qnumlikes = num;
        }
        var uploader = document.getElementById('uploderPic' + num);
        var image = document.getElementById('up-img' + num);
        image.classList.add("no-image");
        image.style.backgroundImage = "";
        uploader.click();

        // שאלות בחירה עם תמונה
        if (num == "4" || num == "32") {
            for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
            }
        }
        if (qnumlikes == "19") {
            $('#SharedText' + qnumlikes).val("");
        }

        //אם יש תמונה בהעלאה אז שלא יהיה ניתן לבחור מהאפשרויות(תמונות) לבחירה
        uploader.onchange = function () {
            var reader = new FileReader();
            reader.onload = function (evt) { // read file
                var fileName = uploader.files[0].name; // get file name
                var idxDot = fileName.lastIndexOf(".") + 1;
                var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
                if (extFile == "jpg" || extFile == "jpeg" || extFile == "png" || extFile == "gif") { // types to accept
                    image.classList.remove("no-image");
                    image.style.backgroundImage = "url(" + evt.target.result + ")"; // show img in the circle
                    document.getElementById("Message" + qnumlikes).style.visibility = "hidden";
                } else {
                    document.getElementById("Message" + qnumlikes).style.visibility = "visible";
                }
            };
            if (uploader.files[0] == "" || uploader.files[0] == null || uploader.files[0] == "undefined") {

            } else {
                reader.readAsDataURL(uploader.files[0]);
            }

        };
    });

    // שאלות סקר כפתור "שתפו"
    $('.quiz-question').click(function () {
        var getId = this.id;
        var num = getId.substring(5);
        var UserId = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID;
        var ifChecked = $("input[name = q" + num + "]").is(':checked');
        if (ifChecked == true) {
            var selected = document.querySelector("input[name = q" + num + "]:checked").value;
            var PicOptions = document.getElementById("imgRadio" + num + "val" + selected).src;
            var InputTextOptions = $("#q" + num + "val" + selected).text();
        }
        if (num != "27") { // if not question 27 - question no input text
            var SharedText = document.getElementById("SharedText" + num).value;
            if (ifChecked == true && SharedText != "") {
                $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { //ajax send to handler
                    UserId: UserId,
                    QuestionId: num,
                    InputTextOptions: InputTextOptions,
                    SharedText: SharedText,
                    PicOptions: PicOptions,
                    rType: "SaveText"
                })
                    .done(function (data) { // עמודה חדשה או עדכון
                        $("#" + getId).css("background-color", "white");
                        document.getElementById("currentImg" + num).src = PicOptions;
                        //clear answers in inputs
                        SharedText = "";
                        $("#SharedText" + num).val("");
                        var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                        sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                        animatedScrollQ(num);
                        for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                            $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
                        }
                        document.getElementById("Message" + num).style.visibility = "hidden";
                    })
                    .fail(function () {
                        console.log("error");
                    });
            } else {
                document.getElementById("Message" + num).style.visibility = "visible"; // show message
            }
        } else {
            if (ifChecked == true) {
                $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
                    UserId: UserId,
                    QuestionId: num,
                    InputTextOptions: InputTextOptions,
                    PicOptions: PicOptions,
                    rType: "SaveText"
                })
                    .done(function (data) {// עמודה חדשה או עדכון
                        $("#" + getId).css("background-color", "white");
                        document.getElementById("currentImg" + num).src = PicOptions;
                        // clear answers inputs
                        $("#SharedText" + getId).text("");
                        $("#SharedText" + num).val("");
                        animatedScrollQ(num);
                        var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                        sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                        document.getElementById("Message" + num).style.visibility = "hidden";
                    })
                    .fail(function () {
                        console.log("error");
                    });
            } else {
                document.getElementById("Message" + num).style.visibility = "visible"; //show message
            }

        }
    });

    // just for one dropdown question
    $(".select-options").click(function () {
        var getId = this.id;
        var num = getId.substring(5);
        var UserId = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID;
        var InputTextOptions = $("#dropdown" + num + " option:selected").text();
        var selected = $("#dropdown" + num + " option:selected").val();
        var PicOptions = document.getElementById("imgRadio" + num + "val" + selected).src;

        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
            UserId: UserId,
            QuestionId: num,
            PicOptions: PicOptions,
            InputTextOptions: InputTextOptions,
            rType: "SaveText"
        })
            .done(function (data) { // עמודה חדשה או עדכון
                $("#" + getId).css("background-color", "white");
                document.getElementById("currentImg" + num).src = PicOptions;
                animatedScrollQ(num);
                //clear answers in inputs
                $("#SharedText" + num).val("");
                var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
            })
            .fail(function () {
                console.log("error");
            });
    });

    // select question function
    $(".radio-quest").click(function () { // פונקציה לשאלות בחירה
        var getId = this.id;
        var num = getId.substring(5);
        var uploder = document.getElementById("uploderPic" + num);
        if (uploder.files.length > 0) { // אם יש תמונה
            for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
            }
            $("#HiddenField" + num).val("not checked");
            // לשלוח לhandler// לשמור נתיב תמונה
            var PicPath = uploder.files[0].name;
            var idxDot = PicPath.lastIndexOf(".") + 1;
            var extFile = PicPath.substr(idxDot, PicPath.length).toLowerCase();
            if (extFile != "jpg" || extFile != "jpeg" || extFile != "png" || extFile != "gif") {
                document.getElementById("Message" + num).style.visibility = "visible";
            }
        } else {
            var ifChecked = $("input[name = q" + num + "]").is(':checked');
            if (ifChecked == true) {
                var selected = document.querySelector("input[name = q" + num + "]:checked").value;
                var PicOptions = document.getElementById("imgRadio" + num + "val" + selected).src;
                $("#HiddenField" + num).val(PicOptions);
            }
        }

    });

    // check click on radio element - show heart or / clear uplode files
    $('input[type = radio]').click(function () {
        var nameofRadio = this.name;
        if (nameofRadio.includes("q")) {
            var num = nameofRadio.substring(1);
            var getVal = this.value;
            var PicOptions = document.getElementById("imgRadio" + num + "val" + getVal);
            if (PicOptions.classList.contains("dont-show-heart")) {
            } else {
                var heart = document.getElementById("heart" + num + "val" + getVal);
                heart.style.visibility = "visible";
                setInterval(function () {
                    heart.style.visibility = "hidden";
                }, 2000);
            }

            if (num == "4" || num == "33") {
                //אם יש תמונה בהעלאה אז שלא יהיה ניתן לבחור מהאפשרויות(תמונות) לבחירה
                var uploder = document.getElementById("uploderPic" + num);
                if (uploder.files.length > 0) { // אם יש תמונה
                    var fileName = uploder.files[0].name;
                    var idxDot = fileName.lastIndexOf(".") + 1;
                    var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
                    if (extFile == "jpg" || extFile == "jpeg" || extFile == "png" || extFile == "gif") {
                        document.getElementById("Message" + num).style.visibility = "hidden";
                        //clear answers in inputs
                        document.getElementById("up-img" + num).style.backgroundImage = "";
                        document.getElementById("up-img" + num).classList.add("no-image");
                        uploder.value = null;
                    } else {
                        document.getElementById("Message" + num).style.visibility = "visible";
                    }
                }
            }
            if (num == "7") {
                $('#SharedText' + num).val("");
            }
        }
    });

    // questions with radios and with text 
    $(".radios-set").click(function () {
        var getId = this.id;
        var num = getId.substring(5);
        if (num.includes("like")) {
            num = num.substring(4);
        }
        var UserId = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID;
        var ifChecked = $("input[name = q" + num + "]").is(':checked');
        if (ifChecked == true) {
            var selected = document.querySelector("input[name = q" + num + "]:checked").value;
            var PicOptions = document.getElementById("imgRadio" + num + "val" + selected).src;
        }
        var InputTextOptions = "";
        if (num != "16") { // regular text question - with background options
            var SharedText = document.getElementById("SharedText" + num).value;
            if (/*ifChecked == true && */SharedText != "") {
                if (num == "20") {// question with room input (2 input texts)
                    InputTextOptions = "אני מאושפז/ת בחדר: " + document.getElementById("select_room_input").value;
                    if (document.getElementById("select_room_input").value != "" /*&& ifChecked == true*/ && SharedText != "") {
                        if (ifChecked == false) {
                            PicOptions = document.getElementById('grayBackground').src;
                        }
                        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
                            UserId: UserId,
                            QuestionId: num,
                            SharedText: SharedText,
                            InputTextOptions: InputTextOptions,
                            PicOptions: PicOptions,
                            rType: "SaveText"
                        })
                            .done(function (data) {// עמודה חדשה או עדכון
                                $("#" + getId).css("background-color", "white");
                                document.getElementById("currentImg" + num).src = PicOptions;
                                animatedScrollQ(num);
                                var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                                sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                                //clear answers in inputs
                                document.getElementById("select_room_input").value = "";
                                document.getElementById("SharedText" + num).value = "";
                                $("#SharedText" + num).val("");
                                document.getElementById("Message" + num).style.visibility = "hidden";
                                for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                                    $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
                                }
                            })
                            .fail(function () {
                                console.log("error");
                            });
                    } else {
                        document.getElementById("Message" + num).style.visibility = "visible";
                    }
                } else { // if not question 20
                    if (ifChecked == false) {
                        PicOptions = document.getElementById('grayBackground').src;
                    }
                    $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
                        UserId: UserId,
                        QuestionId: num,
                        SharedText: SharedText,
                        InputTextOptions: InputTextOptions,
                        PicOptions: PicOptions,
                        rType: "SaveText"
                    })
                        .done(function (data) { // עמודה חדשה או עדכון
                            $("#" + getId).css("background-color", "white");
                            document.getElementById("currentImg" + num).src = PicOptions;
                            //clear answers in inputs
                            $("#SharedText" + num).val("");
                            animatedScrollQ(num);
                            var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                            sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                            document.getElementById("Message" + num).style.visibility = "hidden";
                            animatedScrollQ(num);
                            for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                                $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
                            }
                        })
                        .fail(function () {
                            console.log("error");
                        });
                }
            } else {
                document.getElementById("Message" + num).style.visibility = "visible";
                SharedText = document.getElementById("SharedText" + num).value;
                if (num == "7") {
                    if (SharedText != "") {
                        PicOptions = document.getElementById('grayBackground').src;
                    }
                    document.getElementById("Message" + num).style.visibility = "hidden";
                    $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
                        UserId: UserId,
                        QuestionId: num,
                        PicOptions: PicOptions,
                        SharedText: SharedText,
                        rType: "SaveText"
                    })
                        .done(function (data) { // עמודה חדשה או עדכון
                            $("#" + getId).css("background-color", "white");
                            document.getElementById("currentImg" + num).src = PicOptions;
                            //clear answers in inputs
                            $("#SharedText" + num).val("");
                            animatedScrollQ(num);
                            var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                            sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                            for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                                $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
                            }
                        })
                        .fail(function () {
                            console.log("error");
                        });
                }
            }
        } else if (ifChecked == true) {// if question 16 - selection only
            var SharedText = document.getElementById("SharedText" + num).value;
            $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
                UserId: UserId,
                QuestionId: num,
                PicOptions: PicOptions,
                SharedText: SharedText,
                rType: "SaveText"
            })
                .done(function (data) { // עמודה חדשה או עדכון
                    $("#" + getId).css("background-color", "white");
                    document.getElementById("currentImg" + num).src = PicOptions;
                    //clear answers in inputs
                    $("#SharedText" + num).val("");
                    animatedScrollQ(num);
                    var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                    sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                    for (i = 1; i < ($("input[name = q" + num + "]").length + 1); i++) {
                        $("input[name = q" + num + "][value =" + i + "]").prop("checked", false);
                    }
                })
                .fail(function () {
                    console.log("error");
                });
        } else {
            document.getElementById("Message" + num).style.visibility = "visible";
        }
    });

    $('#hello').hide();

    /// ----   functions that send to handler  ----///

    // when user clicked on enter login
    $("#login_btn").click(function (e) {
        //call to handler
        e.preventDefault();
        var username = $("#input-username").val();
        var passw = $("#input-password").val();
        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
            Phone: username,
            Password: passw,
            rType: "userLogin"
        })
            .done(function (data) { // עמודה חדשה או עדכון
                if (data == "לא קיים") {
                    $('#messeges-login-Modal').modal('show');
                    $('#messeges-login-Modal .modal-body p').text("המשתמש אינו קיים");
                } else if (data == "הסיסמא שגויה") {
                    $('#messeges-login-Modal').modal('show');
                    $('#messeges-login-Modal .modal-body p').text("הסיסמה אינה נכונה אנא נסו שוב או לחצו על 'שחכתי סיסמה'");
                } else if (data == "למלא") {
                    $('#messeges-login-Modal').modal('show');
                    $('#messeges-login-Modal .modal-body p').text("נא למלא טלפון הורה וסיסמה");
                } else {
                    setInterval(function () {
                        if ((JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID != "1") {
                            window.location.href = "episodes.html";
                        } else {
                            window.location.href = "data-table.html";
                        }
                    }, 4000);

                    $('#hello').fadeIn(1000);
                    $('#login-conn').hide();
                    var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                    sessionStorage.setItem('mapDataSession', JSON.stringify(DataArrayVar));
                    var FirstName = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].FirstName;
                    var LastName = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].LastName;
                    if ((JSON.parse(sessionStorage.getItem('mapDataSession')))[0].userID != "1") {
                        $('#Name-user').text(FirstName + " " + LastName);
                    } else {
                        $('#Name-user').text("עורך - בעל יכולת ניהול");
                    }
                }
            })
            .fail(function () {
                console.log("error");
            });
    });

    // creates new users
    $("#CreateUser_btn").click(function (e) {
        e.preventDefault();
        var FirstName = $("#input_fname").val();
        var LastName = $("#input_lname").val();
        var Phone = $("#input_phone").val();
        var Password = $("#input_password").val();
        if (Phone != null && Password != null && FirstName != null && LastName != null) {
            $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { //call to handler
                FirstName: FirstName,
                LastName: LastName,
                Phone: Phone,
                Password: Password,
                rType: "userCreate"
            })
                .done(function (data) {
                    if (data == "נוצר") {
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-header h5').text("הצלחה");
                        $('#messeges-register-Modal .modal-body #m1').text("המשתמש נוצר בהצלחה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("טלפון:");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text(Phone.toString());
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("סיסמה:");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text(Password.toString());
                        $('#messeges-register-Modal .modal-body #last-m').text("אל תשכחו לשלוח לילדים את הטלפון וסיסמא על מנת שיוכלו להתחבר");
                        $('#input_fname').val("");
                        $('#input_lname').val("");
                        $('#input_phone').val("");
                        $('#input_password').val("");
                    } else if (data == "כבר קיים משתמש") {
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-body #m1').text("המשתמש כבר קיים במערכת, השתמשו במספר טלפון שונה");
                        $('#messeges-register-Modal .modal-header h5').text("שגיאה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text("");
                        $('#messeges-register-Modal .modal-body #last-m').text("");
                    } else if (data == "נא למלא את כל השדות") {
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-body #m1').text("יש למלא את כל השדות");
                        $('#messeges-register-Modal .modal-header h5').text("שגיאה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text("");
                        $('#messeges-register-Modal .modal-body #last-m').text("");
                    }
                })
                .fail(function () {
                    console.log("error");
                });
        }
    });

    //when user wants to change his password
    $("#ChangePW_BTN").click(function (e) {
        e.preventDefault();
        var Phone = $("#input-phoneUser").val();
        var Newpassword = $("#input-password-new").val();
        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {//call to handler
            Phone: Phone,
            NewPassword: Newpassword,
            rType: "ChangePassword"
        })
            .done(function (data) {
                if (data == "השינוי בוצע") {
                    $('#Forgot-Password-Modal .modal-body p').text("הסיסמא שונתה בהצלחה");
                    $('#Forgot-Password-Modal').modal('hide');
                } else if (data == "מספר הטלפון לא קיים במערכת") {
                    $('#Forgot-Password-Modal .modal-body p').text("מספר הטלפון לא קיים במערכת");
                } else if (data == "נא למלא את כל השדות") {
                    $('#Forgot-Password-Modal .modal-body p').text("נא למלא את כל השדות");
                } else if (data == "אדמין") {
                    $('#Forgot-Password-Modal .modal-body p').text("לא ניתן לשנות סיסמה למשתמש עורך");
                }
                $("#input-phoneUser").val("");
                $("#input-password-new").val("")

            })
            .fail(function () {
                console.log("error");
            });
    });

    if ($('.hide-till-found-phone').length > 0) {
        for (i = 1; i < 4; i++) {
            $('#episodeTable' + i).hide();
        }
        $('.hide-till-found-phone').hide();
    }


    $("#sreach-btn").click(function () { 
    var phoneText = $("#phone-input").val();
    $('input[name = episode-select]').removeAttr('checked');
    $('#showUsersTable').hide();
    for (i = 1; i < 4; i++) {
        $("#episodeTable" + i).hide();
    }
    $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
        Phone: phoneText,
        rType: "SearchPhone"
    })
        .done(function (data) {

            if (data == "לא קיים") {
                $('#no-exists-phone').text("שגיאה בחיפוש - לא קיים מספר טלפון");
                $('.hide-till-found-phone').hide();
                $('#no-exists-phone').show();
            } else {
                var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                sessionStorage.setItem('DataArraySession', JSON.stringify(DataArrayVar));
                var FirstName = (JSON.parse(sessionStorage.getItem('DataArraySession')))[0].FirstName;
                var LastName = (JSON.parse(sessionStorage.getItem('DataArraySession')))[0].LastName;
                $('.colorful-div h6').text(phoneText + " - " + FirstName + " " + LastName);
                $('.hide-till-found-phone').addClass('anim');
                $('.hide-till-found-phone').show();
                $('#no-exists-phone').text("");

                // to see if episodes were open or not in the database
                var EpisodesArray = (JSON.parse(sessionStorage.getItem('DataArraySession'))[0].EpisodeShow).split(",");
                for (i = 1; i <= $("[name='ep-show']").length; i++) {
                    $('img[name=episode-image' + i + ']').attr("src", "images/hide-btn.png");
                    document.getElementById('episodeShowBtn' + i).value = "2";
                }
                if (EpisodesArray != "") {
                    for (i = 1; i <= EpisodesArray.length; i++) {
                        $('img[name=episode-image' + EpisodesArray[i - 1] + ']').attr("src", "images/show-btn.png");
                        document.getElementById('episodeShowBtn' + EpisodesArray[i - 1]).value = "1";
                    }
                }

                // to see if questions were open or not in the database
                var QuestionsArray = (JSON.parse(sessionStorage.getItem('DataArraySession'))[0].QuestionShow).split(",");
                $("[name='q-show']").each(function (index, va) {
                    $("[name='q-image" + (index + 1) + "']").attr("src", "images/hide-btn.png");
                    document.getElementById('qShowBtn' + this.id.substring(8)).value = "2";
                });
                if (QuestionsArray != "") {
                    for (i = 1; i <= QuestionsArray.length; i++) {
                        if ($("[name='q-image" + QuestionsArray[i - 1] + "']").length > 0) {
                            $("[name='q-image" + QuestionsArray[i - 1] + "']").attr("src", "images/show-btn.png");
                            document.getElementById('qShowBtn' + QuestionsArray[i - 1]).value = "1";
                        }
                    }
                }
                //clear answers
                for (i = 1; i < $('tr').length - 3; i++) {
                    $('#ansShow' + i).text("");
                    $('#q-picOptions' + i).addClass('hideInputs');
                    $('#q-sharedPic' + i).addClass('hideInputs');
                    $('#InputTextOptions' + i).text("");
                    $('#q-Likes' + i).addClass('hideInputs');
                }

                // show answers 
                for (i = 1; i < (JSON.parse(sessionStorage.getItem('DataArraySession'))).length; i++) {
                    var questionNum = JSON.parse(sessionStorage.getItem('DataArraySession'))[i].QuestionId;
                    var SharedText = JSON.parse(sessionStorage.getItem('DataArraySession'))[i].SharedText;
                    var PicOptions = JSON.parse(sessionStorage.getItem('DataArraySession'))[i].PicOptions;
                    var InputTextOptions = JSON.parse(sessionStorage.getItem('DataArraySession'))[i].InputTextOptions;
                    var SharedPic = JSON.parse(sessionStorage.getItem('DataArraySession'))[i].SharedPic;
                    if (SharedText != "") {
                        $('#ansShow' + questionNum).text(SharedText);
                    }
                    if (PicOptions != "") {
                        if (PicOptions != "" && SharedText != "" || PicOptions != "" && InputTextOptions != "") {
                            if (questionNum == 14 || questionNum == 39 || questionNum == 46 || questionNum == 16 || questionNum == 13) {
                                $('#q-picOptions' + questionNum).attr("src", PicOptions);
                                $('#q-picOptions' + questionNum).removeClass('hideInputs');
                            }
                        } else {
                            $('#q-picOptions' + questionNum).attr("src", PicOptions);
                            $('#q-picOptions' + questionNum).removeClass('hideInputs');
                        }
                    }
                    if (InputTextOptions != "") {
                        $('#InputTextOptions' + questionNum).text(InputTextOptions);
                    }
                    if (SharedPic != "") {
                        if (SharedPic.includes("|")) {
                            var likesArr = SharedPic.split("|");
                            $('#q-Likes' + questionNum).removeClass('hideInputs');
                            $('#like' + questionNum).attr("src", likesArr[0]);
                            $('#unlike' + questionNum).attr("src", likesArr[1]);
                        } else {
                            $('#q-sharedPic' + questionNum).removeClass('hideInputs');
                            $('#q-sharedPic' + questionNum).attr("src", SharedPic);
                        }
                    }
                }
            }

        })
        .fail(function () {
            console.log("error");
        });

    });

    // show relevant table of episode
    $('input[name = episode-select]').click(function () {
        for (i = 1; i <= $('input[name = episode-select]').length; i++) {
            $("#episodeTable" + i).hide();
        }
        var getVal = this.value;
        $("#episodeTable" + getVal).addClass('anim'); // add animation
        $("#episodeTable" + getVal).show();

    });

    // btn show/hide click
    $('button[name = ep-show]').click(function () {
        var getId = this.id;
        var getVal = this.value;
        var num = getId.substring(14);
        var EpisodeShowString = "";
        var userID = (JSON.parse(sessionStorage.getItem('DataArraySession'))[0].userID);

        if (getVal == "1") {
            document.getElementById('episodeShowBtn' + num).value = "2";
            $('img[name=episode-image' + num + ']').attr("src", "images/hide-btn.png");
        } else if (getVal == "2") {
            document.getElementById('episodeShowBtn' + num).value = "1";
            $('img[name=episode-image' + num + ']').attr("src", "images/show-btn.png");
        }

        $("button[name = ep-show]").each(function (index, va) {
            var numAll = this.id.substring(14);
            var idsOfAll = document.getElementById('episodeShowBtn' + numAll);
        if (idsOfAll.value == "1") {
            if (EpisodeShowString == "") {
                EpisodeShowString += numAll;
            } else {
                EpisodeShowString += "," + numAll;
            }
        }
    });
    $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { // send to handler
        userID: userID,
        EpisodeShowString: EpisodeShowString,
        rType: "EpisodeChange"
    })
        .done(function (data) {

        })
        .fail(function () {
            console.log("error");
        });
     
    });

    // btn question show/hide click
    $('button[name = q-show]').click(function () { // show question to user and update the DB
        var getId = this.id;
        var getVal = this.value;
        var num = getId.substring(8);
        if (getVal == "1") {
            document.getElementById('qShowBtn' + num).value = "2";
            $('img[name=q-image' + num + ']').attr("src", "images/hide-btn.png");
        } else if (getVal == "2") {
            document.getElementById('qShowBtn' + num).value = "1";
            $('img[name=q-image' + num + ']').attr("src", "images/show-btn.png");
        }
        saveShowQuestionsDB();  // function that saves to DB the relevant questions to relevant user
    });

    //show delete modal
    $('#deleteUserBtn').click(function () {
        var userPhone = (JSON.parse(sessionStorage.getItem('DataArraySession'))[0].Phone);
        $('#Delete-User-Modal .modal-body h9').text("האם אתם בטוחים שברצונכם למחוק את המשתמש" + " " + userPhone + "?");
    });

    // when clicked "yes" to delete user
    $('#Delete-User-Yes').click(function () { 
        var userID = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].userID;
        var Phone = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].Phone;

        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", {
            userID: userID,
            Phone: Phone,
            rType: "DeleteUser"
        })
            .done(function () {
                $('.hide-till-found-phone').hide();
            })
            .fail(function () {
                console.log("error");
            });
    });

     // pencil click go to edit page
    $('#EditUserBtn').click(function () { 
        window.location.href = 'register.html';
        sessionStorage.setItem('checkIfEditOrNewUser', 1);
    });
            // "עדכון משתמש" page or "הרשמת משתמשים" page
            if (sessionStorage.getItem('checkIfEditOrNewUser') == 1) {
                var Phone = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].Phone;
                var FirstName = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].FirstName;
                var LastName = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].LastName;
                var Password = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].Password;
                document.getElementById('input_fname').value = FirstName;
                $('#input_lname').val(LastName);
                $('#input_phone').val(Phone);
                $('#input_password').val(Password);
                $('.hideInputs').removeClass('hideInputs');
                $('.createNew').addClass('hideInputs');
                $('#UpdateThisUser').text(Phone);
                $('#landing-nav-section').parent().removeClass('active');
                //$('#input_phone').prop('readonly', true);
                sessionStorage.setItem('checkIfEditOrNewUser', 0);
            }

    // update user name, last name, pw, phone - when click on "עדכן"
    $('#UpdateUser_btn').click(function (e) {
        e.preventDefault();
        var userID = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].userID;
        var FirstName = $('#input_fname').val();
        var LastName = $('#input_lname').val();
        var Phone = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].Phone;
        var PhoneNew = $('#input_phone').val();
        var Password = $('#input_password').val();
        if (FirstName != "" && LastName != "" && Phone != "" && Password != "") {
            $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { // send to handler
                userID: userID,
                FirstName: FirstName,
                LastName: LastName,
                Password: Password,
                Phone: Phone,
                PhoneNew: PhoneNew,
                rType: "UpdateUser"
            })
                .done(function (data) {
                    $('.hide-till-found-phone').hide();

                    if (data == "לא קיים") {
                        // show modal
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-body #m1').text("המשתמש "+ Phone +" לא קיים");
                        $('#messeges-register-Modal .modal-header h5').text("שגיאה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text("באפשרותכם ליצור משתמש חדש בלחיצה על 'הרשמת משתמשים' בתפריט הניווט");
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text("או שהרגע עדכנתם את מספר הטלפון של המשתמש ולכן עליכם לחפש את המשתמש עם מספר הטלפון החדש " + PhoneNew + " בטבלת הניהול ולעדכן מחדש");
                        $('#messeges-register-Modal .modal-body #last-m').text("");
                    } else if (data == "קיים") {
                        // show modal
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-body #m1').text("כבר קיים משתמש עם מספר טלפון זה");
                        $('#messeges-register-Modal .modal-header h5').text("שגיאה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text("נא הזן מספר טלפון שאינו קיים בסביבה");
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text("");
                        $('#messeges-register-Modal .modal-body #last-m').text("");
                    } else {
                        // save to session
                        var DataArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                        sessionStorage.setItem('DataArraySession', JSON.stringify(DataArrayVar));
                        $('#UpdateThisUser').text(PhoneNew);
                        // show modal
                        $('#messeges-register-Modal').modal('show');
                        $('#messeges-register-Modal .modal-body #m1').text("עודכן בהצלחה המשתמש " + Phone);
                        $('#messeges-register-Modal .modal-header h5').text("הצלחה");
                        $('#messeges-register-Modal .modal-body #phone-h6-modal').text("טלפון:");
                        $('#messeges-register-Modal .modal-body #phone-p-modal').text(PhoneNew);
                        $('#messeges-register-Modal .modal-body #password-h6-modal').text("סיסמה:");
                        $('#messeges-register-Modal .modal-body #password-p-modal').text(Password);
                        $('#messeges-register-Modal .modal-body #last-m').text("אל תשכחו לשלוח לילדים את הטלפון וסיסמא על מנת שיוכלו להתחבר");
                    }
                })
                .fail(function () {
                    console.log("error");
                });
        } else {
            // show modal
            $('#messeges-register-Modal').modal('show');
            $('#messeges-register-Modal .modal-body #m1').text("יש למלא את כל השדות");
            $('#messeges-register-Modal .modal-header h5').text("שגיאה");
            $('#messeges-register-Modal .modal-body #phone-h6-modal').text("");
            $('#messeges-register-Modal .modal-body #phone-p-modal').text("");
            $('#messeges-register-Modal .modal-body #password-h6-modal').text("");
            $('#messeges-register-Modal .modal-body #password-p-modal').text("");
            $('#messeges-register-Modal .modal-body #last-m').text("");
        }
    });


    // makes images big
    $(".images-sizes").click(function () {
        $('#big-img').attr("src", this.src);
        $('#Big-ImagesAns-Modal').modal('show');
    });

    // makes images big
    $(".currentStory").click(function () {
        var getId = this.id;
        var num = getId.substring(5); 
        var imgpic = document.getElementById("currentImg" + num).src;
        var array = JSON.parse(sessionStorage.getItem('mapDataSession'));
        $('#dislike-div-big-img').hide();
        $('#like-big-img-story-btn').hide();
        var index = array.map(function (d) { return d['QuestionId']; }).indexOf(num); // finds the index of num in the json array
        if (index >= 0) {
            var PicOptions = (JSON.parse(sessionStorage.getItem('mapDataSession')))[index].PicOptions;
            var SharedText = (JSON.parse(sessionStorage.getItem('mapDataSession')))[index].SharedText;
            var SharedPic = (JSON.parse(sessionStorage.getItem('mapDataSession')))[index].SharedPic;
            var theQuestion = $(".question[qid=" + num + "] .question-text-top span").text();
            if (imgpic != "") {
                document.getElementById('big-img-story').src = imgpic;
                $('#Big-Images-Modal').modal('show');
            }
            if (theQuestion == "") {
                var allQuestionInArray = ["מי המשפחה שלכם?", "מי החבר או החברה הטובים שלכם", "מה אתם אוהבים לעשות בזמן הפנוי שלכם?", "מה מצחיק אתכם? או גורם לכם לחייך?", "מה האוכל האהוב עליכם ומה פחות?", "מה אתם הכי אוהבים לראות בטלוויזיה?", "מה מרגיע אתכם?", "מה אתם הכי אוהבים בבית הספר ומה פחות?", "למה אתם צריכים להגיע לבית החולים?", "לפני ההגעה לבית החולים יכולות לעלות בנו כל מני שאלות. איזה שאלות הייתם רוצים לשאול את הצוותים ביחס לטיפול / מחלקה / אשפוז ?", "בני כמה אתם? מה מקומכם במשפחה? בכורים? בני זקונים?", "היכן אתם גרים? ספרו משהו מעניין על העיר שאתם גרים בה", "איזה צבע אתם הכי אוהבים? מה הוא מזכיר לכם?", "איך אתם מרגישים עד עכשיו? מה היא הסיבה?", "באיזה יום התאשפזתם?", "מה חשבתם ואיך הרגשתם כשהגעתם לבית החולים? מה היא הסיבה?", "האם זה האשפוז הראשון שלכם?", "איזה שאלות רציתם לשאול לפני הטיפול ושכחתם, התביישתם או שלא היה את מי לשאול?", "מה אתם אומרים על האוכל בבית החולים?", "אתם מאושפזים בחדר מס': איך הייתם מציעים לשדרג את השהות?","העלו תמונה של דבר אחד שאתם אוהבים בחדר האשפוז שלכם", "איזה רופא/ה הכי עזר/ה לכם? איך?", "איזה אחות גרמה לכם לחייך? איך?", "למי סיפרתם שאתם מאושפזים? מישהו הגיע לבקר אתכם?", "לא תמיד נרצה לשתף את כולם באשפוז שלנו, מי לא הייתם רוצים שידעו שאתם כאן?", "רשמו שלשה דברים נעימים/ נחמדים/ טובים באשפוז", "מה הפסדתם בגלל שאתם בבית החולים?", "מה הכי מעצבן באשפוז?", "מי היה איתכם בניתוח?", "מי נמצא איתכם עכשיו?", "אם יכולתם לבחור בכל אדם שיהיה אתכם במהלך האשפוז, מי הוא היה?", "מה אתם זוכרים מלפני ואחרי הניתוח?", "מה חשבתם בפעם הראשונה כשאמרו לכם שאתם הולכים לעבור ניתוח?", "מה למדתם על עצמכם באשפוז?", "איזה כוח גיליתם שיש לכם כדי להתגבר על כאב או פחד?", "חשבו וספרו לנו על משהו שיכול לשמח אתכם במיוחד, משהו הייתם רוצים לעשות עכשיו", "אילו עיסוקים עוזרים לכם להעביר את הזמן באשפוז?", "מה הייתם מספרים לילדים שבאים להתאשפז?", "איך אתם מרגישים עד עכשיו? מה היא הסיבה?", "מה הדבר הראשון שתעשו כשתצאו מכאן?", "מה עוד נדרש מכם לעשות כדי להחלים?", "ספרו איך המרגש להיות אחרי הטיפול והאשפוז", "התמונה הכי שווה שצילמתם אחרי שיצאתם מבית החולים אל העולם שבחוץ", "ביקרתם במרחב החינוכי? מה הכי אהבתם שם ומה הכי פחות?", "פרגנו בסלפי שממחיש איך אתם מסכמים את האשפוז", "איך אתם מרגישים עד עכשיו? מה היא הסיבה?"];
                theQuestion = allQuestionInArray[num - 1];
            }
                        if (num == "14" || num == "39" || num == "46") {
                theQuestion = "איך אתם מרגישים עד עכשיו? מה היא הסיבה?";
            }
            $('#this-question-big-img').text(theQuestion);
            if (SharedPic != "") {
                if (SharedPic.includes("|")) {
                    var likesArr = SharedPic.split("|");
                    $('#big-img-story').attr("src", sessionStorage.getItem('ifHtmlPage') + likesArr[0]);
                    $('#big-img-story-dislike').attr("src", sessionStorage.getItem('ifHtmlPage') + likesArr[1]);
                    $('#dislike-div-big-img').show();
                    $('#like-big-img-story-btn').show();
                } else {
                    $('#big-img-story' + QNum).attr("src", sessionStorage.getItem('ifHtmlPage') + SharedPic);
                }
            }
            $('#text-not-on-image').text("");
            if (PicOptions != "" && SharedText != "" || SharedPic != "" && SharedText != "") {
                $('#text-on-image').text(SharedText);

                if (($('#text-on-image').text().length) > 150) {
                    $('#text-on-image').css("font-size", "14px");
                }
                if (($('#text-on-image').text().length) < 150) {
                    $('#text-on-image').css("font-size", "16px");
                }
                if (($('#text-on-image').text().length) > 280) {
                    document.getElementById('big-img-story').src = "";
                    $('#text-on-image').text("");
                    $('#text-not-on-image').text(SharedText);
                }
            } else {
                $('#text-on-image').text("");
                $('#text-not-on-image').text("");
            }
        }
    });


    // scroll to next question if saved in DB
    function animatedScrollQ(num) { 
        var questionstring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].QuestionShow;
        if (questionstring.length > 1) {
            var questionarray = questionstring.split(",");
            var indexOfcurrentQ = questionarray.indexOf(num);
            var indexOfnextQ = parseInt(indexOfcurrentQ) + 1;
            var valOfnextQ = questionarray[indexOfnextQ];
            var lastQuest = $("#LastQ").val();
        }

        if ($(".scrollQ" + valOfnextQ).length <= 0) {
            $('html, body').animate({
                scrollTop: ($(".scrollQ" + lastQuest).offset().top) - 200
            }, 1500);
        }
        if (valOfnextQ == null || valOfnextQ == 1) {

        } else {
            if ($(".scrollQ" + valOfnextQ).length > 0) {
        $('html, body').animate({
            scrollTop: ($(".scrollQ" + valOfnextQ).offset().top) - 200
        }, 1500);
            }

        }
    }

        // scroll when postback - questions with upload pics
    if ($(".question").length > 0) {
        if (document.getElementById('ifPostback').value == "true") {
            var num = document.getElementById('postbackScrolltoQ').value;
            if (num.includes("like") || num.includes("Conn")) {
                num = num.substring(4);
            }

            var questionstring = (JSON.parse(sessionStorage.getItem('mapDataSession')))[0].QuestionShow;
            if (questionstring.length > 1) {
                var questionarray = questionstring.split(",");
                var indexOfcurrentQ = questionarray.indexOf(num);
                var indexOfnextQ = parseInt(indexOfcurrentQ) + 1;
                var valOfnextQ = questionarray[indexOfnextQ];
                var lastQuest = $("#LastQ").val();
                var currentQuestion = document.getElementsByClassName('scrollQ' + num)[0];
            }

            if (document.getElementById('ScrollToNextQ').value == "saved") { // if answer is saved in DB and do postback
                $(window).scrollTop(currentQuestion.offsetTop - 200);

                if ($(".scrollQ" + valOfnextQ).length <= 0) {
                    $('html, body').animate({
                        scrollTop: ($(".scrollQ" + lastQuest).offset().top) - 200
                    }, 1500);
                }

                if (valOfnextQ == null || valOfnextQ == 1) {

                } else {
                    $('html, body').animate({
                        scrollTop: ($(".scrollQ" + valOfnextQ).offset().top) - 200
                    }, 1500);
                }
            } else {
                $(window).scrollTop(currentQuestion.offsetTop - 200);
            }
            document.getElementById('ifPostback').value == "false";
        }
    }

    // Enable/Disable sreach BTN //
    $("#phone-input").keyup(function () {
        if (document.getElementById('phone-input').value.length >= 2) {
            document.getElementById('sreach-btn').disabled = false;
        }
        else {
            document.getElementById('sreach-btn').disabled = true;
        }
    });

    // Enable/Disable login BTN 
    $("#input-username, #input-password").keyup(function () {
        if (document.getElementById('input-username').value.length >= 2 && document.getElementById('input-password').value.length >= 2) {
            document.getElementById('login_btn').disabled = false;
        }
        else {
            document.getElementById('login_btn').disabled = true;
        }
    });

    // Enable/Disable register/update user BTN 
    $("#input_fname, #input_lname, #input_phone, #input_password").keyup(function () {
        if (document.getElementById('input_fname').value.length >= 2 && document.getElementById('input_lname').value.length >= 2
            && document.getElementById('input_phone').value.length >= 2 && document.getElementById('input_password').value.length >= 2) {
            $('#CreateUser_btn, #UpdateUser_btn').prop("disabled", false);
        }
        else {
            $('#CreateUser_btn, #UpdateUser_btn').prop("disabled", true);
        }
    });

    // auto height to textarea
    $('textarea').on('input', function () {
        this.style.height = "1px";
        this.style.height = (this.scrollHeight) + "px";
    });

    // all question in this episode will show/hide by click of btn
    $('.hide-Show-all').click(function () {
        var BtnID = this.id;
        var num = BtnID.substring(13);
        var getVal = this.value;
        var valShowOrHide;
        var SrcqBTN;

        if (getVal == "1") {
            document.getElementById('show-Hide-ALL' + num).value = "2";
            $('#show-Hide-ALL' + num).addClass('btn-outline-primary-opessite-1');
            valShowOrHide = "1";
            SrcqBTN = "images/show-btn.png";

        } else if (getVal == "2") {
            document.getElementById('show-Hide-ALL' + num).value = "1";
            $('#show-Hide-ALL' + num).removeClass('btn-outline-primary-opessite-1');
            valShowOrHide = "2";
            SrcqBTN = "images/hide-btn.png";
        }

        if (num == "1") {
            $("[name='q-show']").each(function (index, va) {
                if (va.id.substring(8) <= 14) {
                    $("[name='q-image" + (index + 1) + "']").attr("src", SrcqBTN);
                    document.getElementById(va.id).value = valShowOrHide;
                }
            });
        } else if (num == "2") {
            $("[name='q-show']").each(function (index, va) {
                if (va.id.substring(8) <= 40 && va.id.substring(8) >= 14) {
                    $("[name='q-image" + (index + 1) + "']").attr("src", SrcqBTN);
                    document.getElementById(va.id).value = valShowOrHide;
                }
            });

        } else if (num == "3") {
            $("[name='q-show']").each(function (index, va) {
                if (va.id.substring(8) <= 47 && va.id.substring(8) >= 40) {
                    $("[name='q-image" + va.id.substring(8) + "']").attr("src", SrcqBTN);
                    document.getElementById(va.id).value = valShowOrHide;
                }
            });
        }

        saveShowQuestionsDB(); 
    });

    // function that saves to DB the relevant questions to relevant user
    function saveShowQuestionsDB() {
        var QuestionShowString = "";
        var userID = JSON.parse(sessionStorage.getItem('DataArraySession'))[0].userID;
        $("button[name = q-show]").each(function (index, va) {
            var numAll = va.id.substring(8);
            var idsOfAll = document.getElementById('qShowBtn' + numAll);

            if (idsOfAll.value == "1") {
                if (QuestionShowString == "") {
                    QuestionShowString += numAll;
                } else {
                    QuestionShowString += "," + numAll;
                }
            }
        });

        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { // send to handler
            userID: userID,
            QuestionShowString: QuestionShowString,
            rType: "QuestionsChange"
        })
            .done(function (data) {

            })
            .fail(function () {
                console.log("error");
            });
    }

    $('#showUsersTable').hide();

    // show table of exists users and add rows
    $('#showUsersBTN').click(function () {
        $.get(sessionStorage.getItem('ifHtmlPage') + "Handler.ashx", { // send to handler
            rType: "AllUsers"
        })
            .done(function (data) {
                var allUsersArrayVar = JSON.parse('[' + data.replace(/}{(?=([^"]*"[^"]*")*[^"]*$)/g, '},{') + ']');
                sessionStorage.setItem('allUsersSession', JSON.stringify(allUsersArrayVar));
                $('.hide-till-found-phone').hide();
                $('#no-exists-phone').hide();
                $('#showUsersTable').addClass('anim');
                $('#showUsersTable').show();
                $("#showUsersTable tbody").find("tr").remove(); // clear all table rows in table
                // create rows in table
                for (i = 0; i < JSON.parse(sessionStorage.getItem('allUsersSession')).length; i++) {
                    var userInfo = "<tr id='Phone" + JSON.parse(sessionStorage.getItem('allUsersSession'))[i].Phone + "'><td>" +
                        JSON.parse(sessionStorage.getItem('allUsersSession'))[i].FirstName +
                        "</td><td>" + JSON.parse(sessionStorage.getItem('allUsersSession'))[i].LastName +
                        "</td><td>" + JSON.parse(sessionStorage.getItem('allUsersSession'))[i].Phone + "</td></tr>";
                    $("#showUsersTable tbody").append(userInfo);
                }

            })
            .fail(function () {
                console.log("error");
            });


    });

    // allow only numbers in phone textbox/text inputs
    $("#input_phone, #input-username, #input-phoneUser").keypress(function (evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    });

    

});









