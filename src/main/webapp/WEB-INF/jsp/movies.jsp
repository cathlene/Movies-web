<%-- 
    Document   : movies
    Created on : Feb 29, 2016, 3:16:04 PM
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
                    <th>Title</th>
                    <th>Duration (minutes)</th>
                    <th>Principal actor</th>
                </tr>
                <c:forEach var="movie" items="${movies}">
                    <tr>

                        <td>${movie.title}</a></td>
                        <td>${movie.duur}</td>
                        <td>${movie.hoofdrolSpeler.fullName} </td>

                    </tr>
                </c:forEach>

                <caption>Movies Overview</caption>
            </table>
            <form method="GET" action="<c:url value="/movie/new.htm"/>">
                <input  class="btn btn-primary btn-md" type="submit" value="new"/> 
            </form>
        </main>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
