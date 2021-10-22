<%-- 
    Document   : header
    Created on : Aug 14, 2021, 5:22:29 PM
    Author     : Admin
--%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
        <link href="./static/css/header.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="nav">
            <div class= "nav-inner">
                <ul>
                    <li> <a class="${active=="0"?"activeMenu":""}" href="home">My front page</a></li>
                        <c:forEach items="${top3}" var="i" >
                        <li> <a class="${active==i.ID?"activeMenu":""}" href="gallery?galleryID=${i.ID}">${i.name}</a> </li>
                        </c:forEach>
                    <li> <a class="${active=="4"?"activeMenu":""}" href="contact">Contact</a> </li>
                </ul>
            </div>
            <div class="nav-container">
                <div class="nav-btn">
                    <button onclick="collapseNavbar()" class="dropbtn">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <nav id="dropdown-menu" class="nav-mobile">
                    <div class="nav-mobile-inner">
                        <ul class="nav-mobile-list">
                            <li><a class="nav-mobile-link ${active=="0"?"activeMenu":""}" href="home">My front page</a></li>
                                <c:forEach items="${top3}" var="i" >
                                <li> <a class="nav-mobile-link ${active==i.ID?"activeMenu":""}" href="gallery?galleryID=${i.ID}">${i.name}</a> </li>
                                </c:forEach>
                            <li><a class="nav-mobile-link ${active=="4"?"activeMenu":""}" href="contact">Contact</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="header">
            <div class="header-container">
                <div class="header-inner">
                    <div class="img"><i class="fa fa-camera-retro"></i></div>
                    <!--<img rel="nofollow" src="./images/logo.png"/>-->
                    <div class="title ">
                        PHOTOGRAPHER
                    </div>
                    <div class="subtitle">
                        Welcome to this website
                    </div>
                </div>
            </div>
        </div>
        <script>
            function collapseNavbar() {
                document.getElementById('dropdown-menu').classList.toggle('show');
            }
        </script>
    </body>
</html>
