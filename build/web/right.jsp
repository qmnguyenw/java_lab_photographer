<%-- 
    Document   : right
    Created on : Aug 14, 2021, 5:23:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./static/css/right.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="header-right">
            <h4>Share this page</h4>
        </div>
        <div class="social">
            <div>
                <ul>
                    <li><img src="${contact.icon_face}"><a href="${contact.face_url}"><span>Share on Facebook</span></a></li>
                    <li><img src="${contact.icon_twitter}"><a href="${contact.twitter_url}"><span>Share on Twitter</span></a></li>
                    <li><img src="${contact.icon_google}"><a href="${contact.google_url}"><span>Share on Google</span></a></li>
                </ul>
            </div>

        </div>
    </body>
</html>
