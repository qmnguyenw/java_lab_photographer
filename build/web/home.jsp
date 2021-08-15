<%-- 
    Document   : home
    Created on : Aug 14, 2021, 5:23:22 PM
    Author     : Admin
--%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./static/css/home.css" rel="stylesheet" type="text/css">
        <title>My Front Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="main">
                <div class="left">
                    <div class="image">
                        <img src="${contact.image_main}" alt="First">
                    </div>
                    <div class="description">
                        Lorem ipsum dolor sit amet
                    </div>
                    <div class="content">
                        <c:if test="${error != null}">
                            <h3> ${error}</h3>
                        </c:if>
                        <c:if test="${error == null}">

                            <c:if test="${index > maxPage}">
                                <h3> Not found this page!!!</h3>
                            </c:if>
                            <ul >

                                <c:if test="${index <= maxPage}">
                                    <c:forEach items="${listGallery}" var="i" >
                                        <li class="span4">
                                            <div class="image">
                                                <img src="${i.image}">
                                            </div>
                                            <h4>
                                                <a href="gallery?galleryID=${i.ID}">${i.title}</a>
                                            </h4>
                                            <p>${i.description}</p>
                                        </li>
                                    </c:forEach>

                                </c:if>
                            </ul>

                        </c:if>    
                    <div class="paging">
                        <c:if test="${maxPage < 1}">
                            <h3>Not Found!!</h3>
                        </c:if>
                        <c:if test="${maxPage > 1}">
                            <c:forEach begin="1" end="${maxPage}" var="i">
                                <a class="${i==index?"active":""}" href="home?index=${i}">${i}</a>
                            </c:forEach>
                        </c:if>
                    </div>
                    </div>
                    <div class="about">
                        <h3>About me</h3>
                    </div>
                    <div class="about-detail">
                        ${contact.about}
                    </div>
                </div>
                <div class="right">
                    <jsp:include page="right.jsp"/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
