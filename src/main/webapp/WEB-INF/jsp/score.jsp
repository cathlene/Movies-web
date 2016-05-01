<%-- 
    Document   : score.jsp
    Created on : May 1, 2016, 2:01:32 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <jsp:include page="head.jsp">

        <jsp:param name="title" value="score" />

    </jsp:include>

    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <h2><spring:message code="lbl.actorEditForm" text="Edit actor" /></h2>

            <p>Score: ${score}</p>
        </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
