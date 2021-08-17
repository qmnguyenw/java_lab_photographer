<%-- 
    Document   : contact
    Created on : Aug 14, 2021, 5:22:03 PM
    Author     : Admin
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="./static/css/home.css" rel="stylesheet" type="text/css" />
    <title>My Front Page</title>
  </head>
  <body>
    <div class="container">
      <jsp:include page="header.jsp" />
      <div class="body-main">
        <div class="main">
          <div class="left">
            <div class="about">
              <h3>Contact</h3>
            </div>
            <div class="content-contact">
              <h4>PHOTOGRAPHER</h4>
              <div class="infor">
                <table>
                  <tr>
                    <td>Address:</td>
                    <td>${contact.address}</td>
                  </tr>
                  <tr>
                    <td>City:</td>
                    <td>${contact.city}</td>
                  </tr>
                  <tr>
                    <td>Country:</td>
                    <td>${contact.country}</td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>Tel:</td>
                    <td>${contact.telephone}</td>
                  </tr>
                  <tr>
                    <td>Email:</td>
                    <td>${contact.email}</td>
                  </tr>
                </table>
              </div>
              <div class="map">
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.458650859533!2d105.52420231540215!3d21.014326593645716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zxJDhuqFpIGjhu41jIEZQVA!5e0!3m2!1svi!2s!4v1585369141317!5m2!1svi!2s"
                  width="600"
                  height="450"
                  frameborder="0"
                  style="border: 0"
                  allowfullscreen=""
                  aria-hidden="false"
                  tabindex="0"
                ></iframe>
              </div>
            </div>
          </div>
          <div class="right">
            <jsp:include page="right.jsp" />
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="footer.jsp" />
  </body>
</html>
