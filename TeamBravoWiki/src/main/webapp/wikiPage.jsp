<%@ page import="com.google.gson.JsonObject" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>User Profile</title>

    <!-- favicon -->
    <link href="img/favicon.png" rel=icon>

    <!-- web-fonts -->
    <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

    <!-- font-awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrapmin340.css">
    <script src="script/jquerymin331.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/script/bootstrap.min.js"></script>

    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
  
    <style>
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
        .nav > li > button:hover {
       
        background-color:#a8adb5;
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">

    <!--NAVBAR-->
        <nav class="navbar navbar-inverse shadow" style="height: 60px; background-color: #d4d5d6; border: none; border-bottom: grey 1px dotted groove; ">
                <div class="container-fluid" >
                  <div class="navbar-header">
                    <a class="navbar-brand" href="homepage.html"><img src="img/wiki2logo.png" alt="" style="width: 90px;height: 33px;margin-top: -5px;"></a>
                  </div>
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="homepage.html" style="height: 60px;">Home</a></li>
                    <li><a href="wikiPage.jsp" style="height: 60px;">wikiPage</a></li>   
                  </ul>
                  
                  <ul class="nav navbar-nav navbar-right">
               
                  		<li><button class="SignButton">Kayit OL</button></li>
                    	<li><button class="SignButton">Giris Yap</button></li>
                	
   				 </ul>
                </div>
              </nav>

              <div></div>
    <div id="main-wrapper">
            
        <!-- Page Preloader -->
        <div id="preloader">
            
            <div id="status">
                
                <div class="status-mes"></div>
            </div>
        </div>

        <!--SOLDİV-->
        <div style="width: 72%; height: 50px; text-align: center; margin: 0%;background-color: white;margin-left: 5%;"><h1 style="padding-top: 5px; ">BAŞLIK</h1></div>
        <div class="columns-block container" style="margin-left: 5%; margin-top: 1%; width: 90%">
            <div style="width: 0;">

            </div>

            
            <!-- .left-col-block -->
            <div class="left-col-block blocks" style="">
                <div class="theiaStickySidebar">
                    <section class="expertise-wrapper section-wrapper gray-bg">
                        <div class="container-fluid">
                            <div id="section1">
                                            <!-- .row -->
                                <div class="row" style="border-bottom: 1px dotted rgb(234, 234, 234)">
                                    <div class="col-md-12">
                                        <div class="section-title" >
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                <%  StringBuilder headerContent;
                                                    StringBuilder pageContent;
                                                    for(int i=0;i<10;i++){
                                                        if(((JsonObject)session.getAttribute("headerContent")).get(i+":0") == null)   break;
                                                        for(int j=0;j<10;j++){
                                                            String id=i+":"+j;
                                                            if(((JsonObject)session.getAttribute("pageContent")).get(i+":"+j) == null)   break;
                                                %>
                                                <tr>
                                                    <%  int paddingLeft = 8;
                                                        if(j==0) paddingLeft = 3;%>
                                                    <td width="70%" height="100" valign="" style="padding-left: <%=paddingLeft%>%;">
                                                        <%
                                                            headerContent = new StringBuilder(((JsonObject)session.getAttribute("headerContent")).get(i+":"+j).toString());
                                                            headerContent.deleteCharAt(0);
                                                            headerContent.deleteCharAt(headerContent.length()-1);
                                                        %>
                                                        <h2 id="<%=id%>"><%=headerContent%></h2id>
                                                        <%
                                                            pageContent = new StringBuilder(((JsonObject)session.getAttribute("pageContent")).get(i+":"+j).toString());
                                                            pageContent.deleteCharAt(0);
                                                            pageContent.deleteCharAt(pageContent.length()-1);
                                                        %>
                                                        <p><%=pageContent%></p>
                                                    </td>
                                                </tr>
                                                <%
                                                    }}
                                                %>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>

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
                <div style="width: 20%; padding-left: 50px; ">
                        <div class="left-col-block blocks" style="padding-left:12%;">
                                <header class="header theiaStickySidebar">
                                    <div class="profile-img">
                                        
                                          
                    <img id="jpg1"src="img/img-profile.jpg" class="img-responsive" alt=""/>
                </div>

                                    <div class="content">
                                       <h1>Name of Game</h1>

                                       <h2>Başlıklar</h2>
                

                                        <nav id="myScrollspy">
                                            <ul class="nav nav-pills nav-stacked" data-spy="" id="ulbackground" >
                                                <%
                                                    String headerContentSt;
                                                    for(int i=0;i<10;i++){
                                                        if(((JsonObject)session.getAttribute("headerContent")).get(i+":0") == null)   break;
                                                        for(int j=0;j<10;j++){
                                                            String idRef=i+":"+j;
                                                            if(((JsonObject)session.getAttribute("pageContent")).get(i+":"+j) == null)   break;
                                                            headerContent = new StringBuilder(((JsonObject)session.getAttribute("headerContent")).get(i+":"+j).toString());
                                                            headerContent.deleteCharAt(0);
                                                            headerContent.deleteCharAt(headerContent.length()-1);
                                                            if(i==0 && j==0){
                                                                headerContentSt = new String(i + ". " + headerContent);
                                                            }
                                                            else{
                                                                headerContentSt = new String(i + "." + j + " " + headerContent.toString());
                                                            }
                                                %>
                                                <li><a href="#<%=idRef%>" style="font-size: 16px;"><%=headerContentSt%></a></li>
                                                <%
                                                        }
                                                    }
                                                %>
                                            </ul>
                                        </nav>
                                    </div>
                                </header>
                                <!-- .header-->
                            </div>
                </div>
            </div>
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