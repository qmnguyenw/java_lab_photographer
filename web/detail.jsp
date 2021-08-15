<%-- 
    Document   : detail
    Created on : Aug 14, 2021, 5:22:03 PM
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
                    <div class="about">
                        <h3>${gallery.name}</h3>
                    </div>
                    <c:if test="${error != null}">
                        <h3 style="margin-bottom: 600px"> ${error}</h3>
                    </c:if>
                    <c:if test="${error == null}">
                        <c:if test="${top1Gallery.image_url != null}">
                            <div class="imageGaler">
                                <img src="${top1Gallery.image_url}">                                
                            </div>
                        </c:if>
                        <div class="contentGallery">

                            <c:if test="${error == null}">

                            </c:if>    
                           
                        </div>
                    </c:if>

                </div>
                <div class="right">
                    <jsp:include page="right.jsp"/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
