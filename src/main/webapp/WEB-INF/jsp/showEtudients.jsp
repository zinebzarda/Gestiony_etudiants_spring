<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2024
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>HTML Table</h2>

<table>
    <tr>
        <th>id</th>

        <th>Nom</th>
        <th>Prenom</th>
        <th>Numero de Matricule</th>
        <th>Email</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${shows}" var="etudiant">
        <tr>
            <td>${etudiant.idEtudient}</td>

            <td>${etudiant.nomEtudient}</td>
            <td>${etudiant.prenomEtudient}</td>
            <td>${etudiant.numeroMatricule}</td>
            <td>${etudiant.mailEtudient}</td>
            <td>
                <a href="deleteEtudiant/${etudiant.idEtudient}">delete</a>
                <a href="edit/${etudiant.idEtudient}">edite</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
