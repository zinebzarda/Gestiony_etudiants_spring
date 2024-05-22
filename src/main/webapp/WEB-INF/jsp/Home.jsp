<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
            <div class="col-md-2">
                <ul class="email text_align_right">
                    <li class="d_none"><a href="Javascript:void(0)"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                    <li class="d_none"> <a href="Javascript:void(0)"><i class="fa fa-search" style="cursor: pointer;" aria-hidden="true"></i></a> </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- end header inner -->

<div class="carousel-inner">
    <!-- first slide -->
    <div class="carousel-item active">
        <div class="carousel-caption relative">
            <div class="row d_flex">
                <div  class="col-md-5">
                    <div class="board">
                        <h3>
                            Skating<br> Board<br> School
                        </h3>
                        <div class="link_btn">
                            <a class="read_more" href="#">Read More<span></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="banner_img">
                        <figure><img class="img_responsive" src="https://img.freepik.com/photos-gratuite/rendu-3d-dessin-anime-comme-garcon-faisant-ses-devoirs_23-2150797744.jpg"></figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- about -->
<div class="about">
    <div class="container-fluid">
        <div class="row d_flex">
            <div class="col-md-6">
                <div class="titlepage text_align_left text-dark">
                    <h2 style="color: #111111">About <br>Skating <br> school</h2>
                    <p style="color: #111111">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alterationThere are many variatioThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alterationThere are many variationsns
                    </p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="about_img text_align_center">
                    <figure><img src="https://img.freepik.com/vecteurs-libre/fond-garcon-creatif-elements-scolaires_23-2147660456.jpg" alt="#"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end about -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 ">
                    <div class="infoma">
                        <h3>Contact Us</h3>
                        <ul class="conta">
                            <li><i class="fa fa-map-marker" aria-hidden="true"></i>Locations
                            </li>
                            <li><i class="fa fa-phone" aria-hidden="true"></i>Call +01 1234567890</li>
                            <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="Javascript:void(0)"> demo@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row border_left">
                        <div class="col-md-12">
                            <div class="infoma">
                                <h3>Newsletter</h3>
                                <form class="form_subscri" action="home" method="get">
                                    <div class="row">
                                        <div class="col-md-12">
                                        </div>
                                        <div class="col-md-4">
                                            <input class="newsl" placeholder="Enter your email" type="text" name="Enter your email">
                                        </div>
                                        <div class="col-md-4">
                                            <input class="newsl" placeholder="Enter your email" type="text" name="Enter your email">
                                        </div>
                                        <div class="col-md-4">
                                            <button class="subsci_btn">subscribe</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="infoma">
                                <h3>Useful Link</h3>
                                <ul class="fullink">
                                    <li><a href="home">Home</a></li>
                                    <li><a href="add">Add</a></li>
                                    <li><a href="showEtudients">Show List Student</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>© 2020 All Rights Reserved. Design by <a href="https://html.design/"> Free html Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="js/bootstrap.bundle.min.js"></script>
<script><%@include file="js/bootstrap.bundle.min.js"%></script>
<%--% refrrefbrekjfnbrjbfnrjbrjhbrhjhj
<div class="topnav">
    <a class="active" href="Home.jsp">Home</a>
    <a href="add">Add Employee</a>
</div> --%>
</body>
</html>

