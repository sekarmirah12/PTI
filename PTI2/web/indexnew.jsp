<%-- 
    Document   : indexnew
    Created on : May 17, 2017, 7:33:56 PM
    Author     : Yoseph
--%>

<%@page import="Test.SessionCounter"%>
<%@page import="ApiConnect.Connection"%>
<%@page import="twitter4j.ResponseList"%>
<%@page import="twitter4j.Twitter"%>
<%@page import="twitter4j.Status"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Masdha FM - Home</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
        <link rel="stylesheet" href="assets/css/untitled-1.css">
        <link rel="stylesheet" href="assets/css/untitled-2.css">
        <link rel="stylesheet" href="assets/css/untitled-3.css">
        <link rel="stylesheet" href="assets/css/untitled-4.css">
        <link rel="stylesheet" href="assets/css/untitled-5.css">
        <link rel="stylesheet" href="assets/css/untitled-6.css">
        <link rel="stylesheet" href="assets/css/untitled-7.css">
        <link rel="stylesheet" href="assets/css/untitled-8.css">
        <link rel="stylesheet" href="assets/css/untitled-9.css">
        <link rel="stylesheet" href="assets/css/untitled-10.css">
        <link rel="stylesheet" href="assets/css/untitled-11.css">
        <link rel="stylesheet" href="assets/css/untitled-12.css">

    </head>

    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="indexnew.jsp"><strong>Masdha</strong> FM</a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li role="presentation"><a href="Programs.jsp">Programs</a></li>
                        <li role="presentation"><a href="Kontak.jsp">Kontak Kami</a></li>
                        <li role="presentation"><a href="About.jsp">About Us</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="div1" class="wew1">
            <div class="jumbotron">
                <h1>Sedang Dalam Tahap Pengembangan</h1>
                <p>Mohon bersabar ini ujian......</p>
                <p></p>
                <div class="dropdown open">
                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true" type="button">Pilihan hidup</button>
                    <ul class="dropdown-menu" role="menu">
                        <li role="presentation"><a href="#">menyerah </a></li>
                        <li role="presentation"><a href="#">putus asa</a></li>
                        <li role="presentation"><a href="#">bakar </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="div2" class="wew2" style="overflow:scroll;">
            <div class="jumbotron">
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
   <script>
 function autoRefresh_div()
 {
      $("#result").load("#result");// a function which will load data from other file after x seconds
  }
 
  setInterval('autoRefresh_div()', 20000); // refresh div after 60 secs
            </script>
                <div id="result">
                <h1>Twitter feed</h1>
                <%! static int y = 1;
                    
                
                %>
                <% out.print("yuhu"+y++);
                %>
                    <p></p></div>
            </div>
        </div>
        <div id="div3" class="wew3">
            <div class="jumbotron">
                <!-- <audio controls>
                     <iframe src="http://jogjastreamers.com/masdha-fm.html" 
                     title="MasdhaFM" style="background-image:url(Images/Masdha.png)" sandbox="allow-same-origin allow-scripts"
                     height="70" width="70" scrolling="no">
                </iframe>-->
                <iframe src="http://jkt.jogjastreamers.com:8000/masda?s=660216089945691" 
                        title="MasdhaFM" style="background-image:url(Images/Masdha.png)"
                        height="180" width="300">
                </iframe>
                </audio>
                <%
                 SessionCounter counter = (SessionCounter) session.getAttribute("counter");
                %>
                Number of online user(s): <%= counter.getActiveSessionNumber()%>
                <div id="musicqueue" style="overflow:scroll;">
                    <h1>Music queue</h1>
                    <p>Mimi peri - unknown</p>
                </div>
            </div>
        </div>
        <footer id="footer" class="footer1"></footer>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>