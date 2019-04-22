<%@ page import="com.aydin.demo.teambravowiki.model.UserPageContext" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Home Page</title>

    <!-- favicon -->
    <link href="img/favicon.png" rel=icon>

    <!-- web-fonts -->
    <link href="css/fontcss.css" rel="stylesheet">

    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/bootstrap.min2.css">
    <script src="script/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>

    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <script src="script/my_js.js"></script>
    <link href="css/elements.css" rel="stylesheet">
    <link href="css/dropdown.css" rel="stylesheet">
    <script src="script/dropdown.js"></script>
  
    <style>
        .smallnames{
            padding-top: 15px;
            text-align: start;
        }
        .smallimg{
            border-radius: 100px;
            width: 50px;
            height: 50px;
            margin: 10px;
            float: left;

        }
        #fotolar{
            position: relative;            
            width:200px;
            height: 200px;
        }
        #jpg1 {
            
            display: inline-block;
            position: relative;
            height: 200px;
            width: 200px;
            background-color: red;
        }
        .nav-pills > li.active > a {
            background-color: #d1e2ff;
        }
            .nav-pills > li.active > a:hover {
                background-color: #d1e2ff;
            }
        .nav > li > a {
        width:160px;
        }
        .shadow{
            -webkit-box-shadow: 0 8px 6px -6px black;
	        -moz-box-shadow: 0 8px 6px -6px black;
	        box-shadow: 0 8px 6px -6px black;
        }
        .imglogo {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .SignButton{
            height:40px;
            width:160px;
            border-radius:5px;
            background-color:#6f7277;
            justify-content: right;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-right:10px;
            color:white;
        }
        .abs-center-x {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
    <!--NAVBAR-->
    <nav class="navbar navbar-inverse shadow navbar-expand-sm" style="height: 60px; background-color: #314152; border: none; border-bottom: grey 1px dotted groove; ">
        <div class="navbar-collapse collapse" style="margin-left: 0px;" >
            <ul class="navbar-nav abs-center-x">
                <li class="nav-item">
                    <a class="nav-link" class="imglogo" href="homepage.jsp"><img src="img/wiki2logo.png" alt=""
                                                                                 style="width: 90px;height: 32px;display: block;margin-top:14px;"></a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>

                    <div class="dropdown">

                        <%
                            UserPageContext loggedUser = (UserPageContext) session.getAttribute("userDetails");
                            if(loggedUser != null){ %>
                        <img id="loginsmallimg" src="img/einstein.jpg" onclick="myFunction()" class="dropbtn1">
                        <div id="myDropdown" class="dropdown-content">
                            <div id="dropleft"><img id="imgDrop" src="img/einstein.jpg"></div>
                            <div id="dropright">
                                <ul class="ulDrop">
                                    <li class="liName"><%=loggedUser.getUsername() + " " + loggedUser.getUserlastname()%></li>
                                    <li class="liMail"><%=loggedUser.getEmail()%></li>
                                    <li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/userProfile<%=loggedUser.getUserid()%>'">My Profile</button></li>
                                </ul>
                            </div>
                            <div id="dropbottom">
                                <button type="submit" class="LogoutBtn" onclick="location.href='/logout'">Log Out</button>

                            </div>
                        </div>
                        <%  }else{ %>

                        <button class="nologin" onclick="location.href='/login'">Sign in</button>

                        <%} %>

                    </div>
                </li>

            </ul>
        </div>
    </nav>
       <!--<nav class="navbar navbar-inverse shadow" style="height: 60px; background-color: #314152; border: none; border-bottom: grey 1px dotted groove; ">
                <div class="container-fluid" style="margin-left: 0px;" >
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="homepage.html" style="height: 60px;">Home</a></li>
                    <li><a href="wikiPage.jsp" style="height: 60px;">wikiPage</a></li>
                    <li><a class="imglogo" href="homepage.html"><img src="img/wiki2logo.png" alt="" style="width: 90px;height: 33px;display: block; margin-left: 200%"></a></li>
                  </ul>
                    <div class="dropdown">

                        <%--
                        UserPageContext loggedUser = (UserPageContext) session.getAttribute("userDetails");
                        if(loggedUser != null){ %>
                        <img id="loginsmallimg" src="img/einstein.jpg" onclick="myFunction()" class="dropbtn1">
                        <div id="myDropdown" class="dropdown-content">
                            <div id="dropleft"><img id="imgDrop" src="img/einstein.jpg"></div>
                            <div id="dropright">
                                <ul class="ulDrop">
                                    <li class="liName"><%=loggedUser.getUsername() + " " + loggedUser.getUserlastname()%></li>
                                    <li class="liMail"><%=loggedUser.getEmail()%></li>
                                    <li class="LiAccount"><button type="submit" class="DropBtn1" onclick="location.href='/userProfile<%=loggedUser.getUserid()%>'">My Profile</button></li>
                                </ul>
                            </div>
                            <div id="dropbottom">
                                <button type="submit" class="LogoutBtn" onclick="location.href='/logout'">Log Out</button>

                            </div>
                        </div>
                        <%  }else{ %>

                        <button class="nologin" onclick="location.href='/login'">Sign in</button>

                        <%} %>

                    </div>
                </div>

              </nav>-->--%>

    <div id="main-wrapper">
        <!-- Page Preloader -->
        <div id="preloader">
            <div id="status">
                <div class="status-mes"></div>
            </div>
        </div>

        <!--SOLDİV-->
        <div class="columns-block container" style="margin-left: 5%; margin-top: 1%; width: 90%">
            <div style="width: 0;">

            </div>
            
            
            <!-- .left-col-block -->
            
            <div class="left-col-block blocks">
                <div class="theiaStickySidebar">
                    <section class="expertise-wrapper section-wrapper gray-bg" style="border-bottom: #555555 dotted 1px;">
                        <div class="container-fluid">
                            <div id="section1">
                                            <!-- .row -->
                                <div class="row" style="">
                                    <div class="col-md-12" >
                                        <div class="section-title shadow" style="float: left; margin-left: 7%;" >
                                            <a href="wikiPage.jsp"><img src="img/anasayfaimg.png" alt="" style="border-radius: 20px; height:320px;"></a>
                                        </div>
                                       <a  class="shadow"href="wikiPage.jsp"><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                       <a  class="shadow"href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>                                        
                                       <a  class="shadow"href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                       <a  class="shadow"href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                       <a  class="shadow"href="wikiPage.jsp"><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                       <a  class="shadow"href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>                                        
                                       <a class="shadow" href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                       <a class="shadow" href=""><img src="img/anasayfaclick.png" alt="" style="border-radius: 20px; width: 250px;height: 75px; margin-left:10px; margin-top: 5px; " ></a>
                                    </div>
                                </div>
                                    <!-- .row -->

                               
                                </div>
                            </div>
                        
                    </section>               
                        <!-- .expertise-wrapper -->
                        <section class="section-wrapper section-interest gray-bg">
                            <div class="container-fluid">
                                <div id="section2"style="border-bottom: #555555 dotted 1px;" >
                                    <div class="row" style="width: 87%; margin: auto" >
                                        <div style="width: 48%; float: left;">
                                            <div class="shadow" style=" height: 75px; background-color: #314152; border-radius: 20px; margin-top: 10px;">
                                                <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                                </div>
                                            <div class="shadow" style=" height: 75px; background-color: #94B9D1;border-radius: 20px; margin-top: 10px;">
                                                <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                            </div>

                                            <div class="shadow" style=" height: 75px; background-color: #314152; border-radius: 20px; margin-top: 10px;">
                                                    <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                            </div>
                                            <div class="shadow" style=" height: 75px; background-color: #94B9D1;border-radius: 20px; margin-top: 10px;">
                                                    <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                            </div>  
                                                                <img class="shadow" src="img/elitehibana.png" alt="" style="border-radius: 20px; margin-top: 10px; width: 99%;">
                                        </div>  
                                        <div class="shadow" style="width:48%; float: right;">
                                                <div class="shadow" style=" height: 75px; background-color: #314152; border-radius: 20px; margin-top: 10px;">
                                                    <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                                </div>
                                                <div class="shadow" style=" height: 75px; background-color: #94B9D1;border-radius: 20px; margin-top: 10px;">
                                                    <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                                    
                                                </div>
                                                                        <img class="shadow" src="img/csgo.png" alt="" style="border-radius: 20px; margin-top: 10px; width: 99%;">
    
                                                <div class="shadow" style=" height: 75px; background-color: #314152;border-radius: 20px; margin-top: 10px;">
                                                        <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                                </div>
                                                <div class="shadow" style=" height: 75px; background-color: #94B9D1;border-radius: 20px; margin-top: 10px;">
                                                        <img  src="img/img-profile.jpg" class="smallimg" alt="" /><H1 class="smallnames">Name of Game</H1>
                                                </div>    
                                            </div> 
                                         
                                        
                                                                       
                                        
                                    </div>
                                    <!-- .row -->

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content-item">
                                                
                                                
                                            </div>
                                            <div class="content-item">
                                            

                                            </div>
                                            <div class="content-item">
                                                
                                            </div>
                                        </div>
                                    </div></div>
                                    <!-- .row -->

                                </div>
</section>
                        <!-- .section-publications -->
                        <section class="section-contact section-wrapper gray-bg">
                            <div class="container-fluid">
                                <div id="section3">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="section-title">
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!--.row-->
                                    <div class="row">
                                        <div class="col-md-12">
                                            
                                        </div>
                                    </div>
                                    <!--.row-->
                                    <br /><br /><br />
                                   </div>
                                </div>
                                <!--.container-fluid-->
</section>
                        <!--.section-contact-->

                        <footer class="footer">
                            <div class="copyright-section">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="copytext">
                                                &copy; GROUP BRAVO. All rights reserved | Design By: GROUP BRAVO MEMBERS
                                            </div>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!-- .container-fluid -->
                            </div>
                            <!-- .copyright-section -->
                        </footer>
                        <!-- .footer -->
                    </div>
                    <!-- Sticky -->
                </div>
                <!-- .right-col-block -->

                 <!--SagDİV-->

            <!-- .columns-block -->
        </div>
        <!-- #main-wrapper -->
        <!-- jquery -->
        <script src="script/jquery-2.1.4.min.js"></script>

        <!-- Bootstrap -->
        <script src="script/bootstrap.min.js"></script>
        <script src="script/theia-sticky-sidebar.js"></script>
        <script src="script/scripts.js"></script>
</body>
</html>