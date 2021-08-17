<%-- Document : right Created on : Aug 14, 2021, 5:23:31 PM Author : Admin --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="./static/css/right.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div class="header-right">
      <h4>Share this page</h4>
    </div>
    <div class="social">
      <div>
        <ul>
          <li>
            <i class="fa fa-facebook-square" style="color: white; padding-top: 2px; padding-right: 10px; vertical-align: middle;">
                <a href="${contact.face_url}"              >
                    <span> Share on Facebook</span>
                </a
            > </i>
          </li>
          <li>
            <i class="fa fa-twitter-square" style="color: white; padding-top: 2px; padding-right: 10px; vertical-align: middle;"> <a
              href="${contact.twitter_url}"
              > <span>Share on Twitter</span> </a
            ></i>
          </li>
          <li>
           <i class="fa fa-google-plus-square" style="color: white; padding-top: 2px; padding-right: 10px; vertical-align: middle;">
               <a href="${contact.google_url}"
              > <span>Share on Google</span>
               </a
               > </i>
          </li>
        </ul>
      </div>
    </div>
  </body>
</html>
