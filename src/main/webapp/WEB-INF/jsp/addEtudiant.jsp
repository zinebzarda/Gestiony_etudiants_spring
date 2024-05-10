<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2024
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un étudiant</title>
</head>
<body>
<h2>Formulaire d'ajout d'étudiant</h2>
<form action="addEtudiant" method="post">
    <label for="nomEtudient">Nom:</label><br>
    <input type="text" id="nomEtudient" name="nomEtudient"><br>
    <label for="prenomEtudient">Prenom:</label><br>
    <input type="text" id="prenomEtudient" name="prenomEtudient"><br><br>

    <label for="numeroMatricule">Numero de Matricule:</label><br>
    <input type="text" id="numeroMatricule" name="numeroMatricule"><br><br>
    <label for="mailEtudient">Email:</label><br>
    <input type="text" id="mailEtudient" name="mailEtudient"><br><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
