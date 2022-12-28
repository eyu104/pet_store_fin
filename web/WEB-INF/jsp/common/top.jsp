<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>

<html >

<head>
    <title>MyPetStore</title>

    <link rel="StyleSheet" href="./CSS/petstore.css" type="text/css" media="screen" />
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.2/jquery.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,600,800" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/d8c443cac1.js" crossorigin="anonymous"></script>
    <!-- Main CSS -->
    <link href="./assets/css/main.css" rel="stylesheet"/>

    <!-- Animation CSS -->
    <link href="./assets/css/vendor/aos.css" rel="stylesheet"/>
</head>

<body >



<nav class="topnav navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="cartForm"><i class="fas fa-anchor mr-2"></i><strong>Pet</strong> store</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarColor02" style="">
            <ul class="navbar-nav mr-auto d-flex align-items-center">
                <li class="nav-item">
                    <a class="nav-link bor" href="categoryForm?categoryId=FISH"><img src="./images/fish.png" width="40"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bor" href="categoryForm?categoryId=DOGS"><img src="images/dog.png" width="40"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bor" href="categoryForm?categoryId=REPTILES"><img src="./images/reptile.png" width="40"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bor" href="categoryForm?categoryId=CATS"><img src="images/cat.png" width="40"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link bor" href="categoryForm?categoryId=BIRDS"><img src="images/bird.png" width="40"/></a>
                </li>
            </ul>


            <ul class="navbar-nav ml-auto d-flex align-items-center">

                <li class="nav-item">
                    <a  class="nav-link" href="">搜索 <i class="fa-solid fa-magnifying-glass"></i></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="help.html">帮助 <i class="fa-regular fa-circle-question"></i></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">账户 <i class="fa-solid fa-user"></i></a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href=""><i class="fa-solid fa-door-open"></i> 登录</a>
                        <a class="dropdown-item" href=""><i class="fa-solid fa-registered"></i> 注册</a>
                        <a class="dropdown-item" href=""><i class="fa-solid fa-address-card"></i> 个人中心</a>
                        <a class="dropdown-item" href=""><i class="fa-solid fa-cart-shopping"></i> 购物车</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="cartForm">&nbsp;  <i class="fa-solid fa-house-chimney"></i></a>
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                    </button>
                </li>
            </ul>


        </div>
    </div>
</nav>


<div id="Content">
