<%-- 
    Document   : actors.jsp
    Created on : Mar 14, 2016, 4:25:37 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>
    <body>
        <jsp:include page="header.jsp"/>
        <main><table class="table">
                <tr>
                    <th><spring:message code="lbl.firstname" text="Firstname" /></th>
                     <th><spring:message code="lbl.name" text="Name" /></th>
                    <th><spring:message code="lbl.age" text="Age" /></th>
                    <th><spring:message code="lbl.id" text="Id" /></th>
                </tr>
                <c:forEach var="actor" items="${actors}">
                    <tr>

                        <td>${actor.voornaam}</td>
                        <td>${actor.naam}</td>
                        <td>${actor.leeftijd} </td>
                        <td>${actor.id} </td>
                        <td><a href="<c:url value="actor/${actor.id}.htm"/>"> <spring:message code="lbl.edit" text="Edit" /></a> </td>
                        <td><a href="<c:url value="actor/delete/${actor.id}.htm" />"><spring:message code="lbl.delete" text="Delete" /></a></td>
                        <td><a href="<c:url value="actor/movies/${actor.id}.htm" />">show movies</a></td>

                    </tr>
                </c:forEach>

                <caption><spring:message code="lbl.actors" text="All Actors in System" /></caption>
            </table>
            <form method="GET" action="<c:url value="/actor/new.htm"/>">
                <input class="btn btn-primary btn-md" type="submit" value="<spring:message code="lbl.new" text="New" />"/>
            </form>
        </main>
        <jsp:include page="footer.jsp"/>

    </body>
</html>