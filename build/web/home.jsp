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
            <div class="body-main">
                <div class="main">
                    <div class="left">
                        <div class="image">
                            <img src="${contact.image_main}" alt="First">
                        </div>
                        <div class="description">
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas distinctio quo, illum sunt debitis odit ullam consequuntur repudiandae dolorum tempora nam beatae officiis possimus voluptatem eligendi placeat. Reiciendis, iste?
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum quam. Etiam tincidunt nibh iaculis aliquam gravida. Curabitur purus enim, pulvinar vel magna sit amet, lobortis faucibus turpis. Mauris arcu lorem, varius vitae purus tempus, efficitur vulputate nisi. Fusce commodo orci sed dolor finibus, hendrerit faucibus tortor tincidunt. In hac habitasse platea dictumst. Donec in scelerisque elit, vitae hendrerit sem. Cras ut felis feugiat elit lacinia aliquet non id purus. Nullam vitae sagittis dui, vel bibendum mi. Duis tincidunt ultrices scelerisque.
                            </div>

                        </div>
                        <div class="content">
                            <c:if test="${error != null}">
                                <h3> ${error}</h3>
                            </c:if>
                            <c:if test="${error == null}">

                                <c:if test="${index > maxPage}">
                                    <h3> Not found this page!!!</h3>
                                </c:if>
                                <ul>
                                    <c:if test="${index <= maxPage}">
                                        <c:forEach items="${listGallery}" var="i" >
                                            <li class="span4">
                                                <div class="image">
                                                    <img src="${i.image}">

                                                    <div>
                                                        <h4>
                                                            <a href="gallery?galleryID=${i.ID}">${i.title}</a>
                                                        </h4>
                                                        <p>${i.description}</p>
                                                    </div>
                                                </div>

                                            </li>
                                        </c:forEach>
                                    </c:if>
                                </ul>

                            </c:if>    
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
        </div>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
