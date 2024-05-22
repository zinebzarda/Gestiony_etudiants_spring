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
<html>
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>sbs</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style><%@include file="css/bootstrap.min.css"%></style>
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <style><%@include file="css/style.css"%></style>
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <style><%@include file="css/responsive.css"%></style>
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<style>
    /* Style pour le formulaire */
    form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    /* Style pour les étiquettes */
    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    /* Style pour les champs de saisie */
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box; /* Pour inclure le padding et la bordure dans la largeur totale */
    }

    /* Style pour le bouton */
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background-color: rgb(91, 147, 200);
        color: white;
        font-weight: bold;
        cursor: pointer;
    }

    /* Style pour le bouton au survol */
    button[type="submit"]:hover {
        background-color:rgb(10, 62, 112);
    }

</style>
</head>

<!-- body -->
<body class="main-layout inner_page">
<div class="header">
    <div class="container-fluid">
        <div class="row d_flex">
            <div class=" col-md-2 col-sm-3 col logo_section">
                <div class="full">
                    <div class="center-desk">
                        <div class="logo">
                            <a href="Home"><img src="https://i.ibb.co/JkxKTyL/school.png" alt="#" width="40px" height="40px" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-sm-12">
                <nav class="navigation navbar navbar-expand-md navbar-dark ">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="home">Home</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="add">Add</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="showEtudients">Show List Student</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
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
