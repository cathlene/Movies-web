<%-- 
    Document   : actors.jsp
    Created on : Mar 14, 2016, 4:25:37 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body>
        <jsp:include page="header.jsp"/>
        <main><table class="table">
                <tr>
                    <th>Voornaam</th>
                    <th>Naam</th>
                    <th>Leeftijd</th>
                    <th>id</th>
                </tr>
                <c:forEach var="actor" items="${actors}">
                    <tr>

                        <td>${actor.voornaam}</td>
                        <td>${actor.naam}</td>
                        <td>${actor.leeftijd} </td>
                        <td>${actor.id} </td>
                        <td><a href="<c:url value="actor/${actor.id}.htm"/>"> edit</a> </td>

                    </tr>
                </c:forEach>

                <caption>Actors Overview</caption>
            </table>
            <form method="GET" action="<c:url value="/actor/new.htm"/>">
                <input class="btn btn-primary btn-md" type="submit" value="new"/>
            </form>
        </main>
        <jsp:include page="footer.jsp"/>

    </body>
</html>