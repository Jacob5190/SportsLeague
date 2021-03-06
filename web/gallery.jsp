<%--
  Created by IntelliJ IDEA.
  User: Jacob
  Date: 2020/5/28
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gallery</title>
    <meta charset="UTF-8">
    <script
            src="resources/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script
            src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet"
          href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-default" style="font-size: large">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/"><img src="resources/images/home/circle-cropped.png" alt="ISL" class="navbar-brand center-block" style="padding: 3px 30px 3px 3px"></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/">Home</a></li>
                <li><a href="calendar">Calendar</a></li>
                <li><a href="competition">Competitions</a></li>
                <li><a href="documents">Documents</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Member schools
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">School 1</a></li>
                        <li><a href="#">School 2</a></li>
                        <li><a href="#">School 3</a></li>
                        <li><a href="#">School 4</a></li>
                        <li><a href="#">School 5</a></li>
                        <li><a href="#">School 6</a></li>
                    </ul>
                </li>
                <li class="active"><a href="#">Gallery</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="contact">Contact us</a></li>
            </ul>
        </div>
    </div>
</nav>
<div style="padding-top: 3%"></div>
<div class="container-fluid">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <%!int length;String[] path;%>
                <%
                    length = (int)request.getAttribute("length");
                    path = new String[length];
                    for (int i = 0; i < length; i++){
                    	path[i] = request.getAttribute("filePath"+i).toString();
                    	out.println("<div class=\"col-md-3\">\n" +
                                "                    <a href=\"#\" class=\"thumbnail\">\n" +
                                "                        <img src=\""+ path[i] +"\">\n" +
                                "                    </a>\n" +
                                "                </div>");
                    }
                %>
            </div>
        </div>
    </div>
</div>
</body>
</html>
