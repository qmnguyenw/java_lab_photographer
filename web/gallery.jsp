<%-- 
    Document   : gallery
    Created on : Aug 14, 2021, 5:23:01 PM
    Author     : Admin
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./static/css/home.css" rel="stylesheet" type="text/css">
        <link href="./static/css/slide.css" rel="stylesheet" type="text/css"/>
        <style>
            
            /* Slideshow container */
            .slideshow-container {
                max-width: 1000px;
                position: relative;
                margin: auto;
            }

            /* Fading animation */
            .fade {
                -webkit-animation-name: fade;
                -webkit-animation-duration: 1.5s;
                animation-name: fade;
                animation-duration: 1.5s;
            }

            @-webkit-keyframes fade {
                from {opacity: .4} 
                to {opacity: 1}
            }

            @keyframes fade {
                from {opacity: .4} 
                to {opacity: 1}
            }

            /* On smaller screens, decrease text size */
            @media only screen and (max-width: 300px) {
                .text {font-size: 11px}
            }
        </style>
        <title>My Front Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="body-main">
            <div class="main">
                <div class="left">
                    <div class="about">
                        <h3>${gallery.name}</h3>
                    </div>
                    <c:if test="${error != null}">
                        <h3 style="margin-bottom: 600px"> ${error}</h3>
                    </c:if>
                    <c:if test="${error == null}">
                        <%--<c:if test="${top1Gallery.image_url != null && totalRecord > 0 }">
                            <div class="imageGaler" id="imageGaler">
                                <c:set var="k" value="0"/>
                                <c:set var="cur" value="0"/>
                                <c:forEach items="${listImage}" var="i" varStatus="loop">
                                    <c:if test="${top1Gallery.id == i.id}">
                                        <c:set var="cur" value="${k}"/>
                                        <div class="mySlides show-on fadesl">
                                            <a href="detail?galleryID=${galleryID}&imgID=${i.id}"><img src="${i.image_url}"></a>
                                        </div>
                                    </c:if>
                                    <c:if test="${top1Gallery.id != i.id}">
                                        <div class="mySlides show-off fadesl">
                                            <a href="detail?galleryID=${galleryID}&imgID=${i.id}"><img src="${i.image_url}"></a>
                                        </div>
                                    </c:if>
                                    <c:set var="k" value="${k + 1}"/>
                                </c:forEach>                                
                                <input type="button" value="Play" onclick="clickBtn();" class="playbtn" id="playbtn">
                            </div>
                        </c:if>--%>
                        <div class="slideshow-container">
                        <c:forEach items="${listImage}" var="i" varStatus="loop">
                            <div class="mySlides fade">
                                <center><img src="${i.image_url}" style="width:70%; height:70%;"></center>
                            </div>
                        </c:forEach>
                        
                        </div> 
                        <div class="contentGallery">
                            <c:if test="${error == null}">
                                <%--<c:if test="${index > maxPage || index < 0}">--%>
                                    <!--<h3> Not found this page!!!</h3>-->
                                <%--</c:if>--%>
                                <ul>
                                    <c:if test="${index <= maxPage}">
                                        <c:forEach items="${listImage}" var="i" varStatus="loop">
                                            <li class="span4">
                                                <a href="gallery?index=${index}&galleryID=${galleryID}&imgID=${i.id}"><img src="${i.image_url}"></a>
                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>

                            </c:if>    
                            <div class="paging">
                                <c:if test="${maxPage > 1}">
                                    <c:forEach begin="1" end="${maxPage}" var="i">
                                        <a class="${i==index?"active":""}" href="gallery?index=${i}&galleryID=${galleryID}">${i}</a>
                                        <c:set var="index" value="${index}" />
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </c:if>

                </div>
                <div class="right">
                    <jsp:include page="right.jsp"/>
                </div>
            </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <script src="js/slide.js" type="text/javascript"></script>
        <script>
            var slideIndex = 0;
            var isPlay = true;
            showSlides();

            function showSlides() {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
              }
              slideIndex++;
              if (slideIndex > slides.length) {slideIndex = 1}    
              slides[slideIndex-1].style.display = "block";  
              setTimeout(showSlides, 5000); // Change image every 5 seconds
            }
            
            
        </script>
    </body>
</html>
