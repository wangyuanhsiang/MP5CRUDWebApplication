<%-- 
    Document   : allstudents
    Created on : Aug 22, 2011, 9:51:32 PM
    Author     : bagnes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Students</title>
    </head>
    <body>
        <table border="1">
            <td><a href="studentinfo.jsp">Student Info</a></td>
            <td><a href="allstudents.jsp">All Students</a></td>            
        </table>
        <br />
        <h3>List of Students</h3>
        <br />
        <table border="1">
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Address</th>
            <c:forEach items="${requestScope.List}" var="student">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/GetStudent?id=${student.studentID}">${student.studentID}</a></td>
                    <td>${student.name}</td>
                    <td>${student.address}</td>
                </tr>
            </c:forEach>                 
        </table>
    </body>
</html>
