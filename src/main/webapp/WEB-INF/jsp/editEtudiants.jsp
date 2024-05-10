<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2024
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${etudiant}" var="etud">

    <form action="<c:url value='/edit/${etud.idEtudient}'/>" method="post">
        <label for="nomEtudient">First name:</label><br>
        <input type="text" id="nomEtudient" name="nomEtudient" value="${etud.nomEtudient}"><br>
        <label for="prenomEtudient">Last name:</label><br>
        <input type="text" id="prenomEtudient" name="prenomEtudient" value="${etud.prenomEtudient}"><br><br>

        <label for="numeroMatricule">Email:</label><br>
        <input type="text" id="numeroMatricule" name="numeroMatricule" value="${etud.numeroMatricule}"><br><br>
        <label for="mailEtudient">Status:</label><br>
        <input type="text" id="mailEtudient" name="mailEtudient" value="${etud.mailEtudient}"><br><br>
        <button type="submit" >Edit</button>
    </form>
</c:forEach>
</body>
</html>
