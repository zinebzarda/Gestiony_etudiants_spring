<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2024
  Time: 12:04
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
    /* Style pour le tableau */
    table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        border: 1px solid rgb(91, 147, 200); /* brun foncé */
    }

    /* Style pour les cellules d'en-tête */
    th {
        background-color: #5b93c8; /* brun clair */
        border: 1px solid #deeffe; /* brun foncé */
        padding: 8px;
        text-align: left;
    }

    /* Style pour les cellules de données */
    td {
        border: 1px solid #5b97c8; /* brun foncé */
        padding: 8px;
    }

    /* Style pour les lignes impaires du tableau */
    tr:nth-child(even) {
        background-color: #89caff; /* brun pâle */
    }

    /* Style pour les liens dans la dernière colonne */
    td a {
        text-decoration: none;
        color: #5b97c8; /* brun foncé */
        margin-right: 5px;
    }

    /* Style pour les liens au survol */
    td a:hover {
        text-decoration: underline;
    }

</style>
</head>

<!-- body -->
<body class="main-layout inner_page">
<!-- end loader -->
<!-- header -->
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

<h2>Table des etudients</h2>

<table>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Numero de Matricule</th>
        <th>Email</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${shows}" var="etudiant">
        <tr>


            <td>${etudiant.nomEtudient}</td>
            <td>${etudiant.prenomEtudient}</td>
            <td>${etudiant.numeroMatricule}</td>
            <td>${etudiant.mailEtudient}</td>
            <td>
                <a href="deleteEtudiant/${etudiant.idEtudient}" class="btn btn-outline-danger">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                        <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                        <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                    </svg>
                </a>
                <a href="edit/${etudiant.idEtudient}" class="btn btn-outline-primary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                    </svg>
                </a>
            </td>


        </tr>
    </c:forEach>

</table>

</body>
</html>
