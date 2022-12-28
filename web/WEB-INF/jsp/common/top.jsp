<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page pageEncoding="utf-8"%>

<!DOCTYPE html>

<html >

<head>
    <title>MyPetStore</title>
<%--    <link href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,600,800" rel="stylesheet">--%>

<%--    <!-- Font Awesome Icons -->--%>
<%--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">--%>

<%--    <!-- Main CSS -->--%>
<%--    <link href="CSS/main.css" rel="stylesheet"/>--%>

<%--    <!-- Animation CSS -->--%>
<%--    <link href="CSS/vendor/aos.css" rel="stylesheet"/>--%>
    <link rel="StyleSheet" href="CSS/petstore.css" type="text/css" media="screen" />
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.2/jquery.min.js"></script>
</head>

<body >


<div id="Logo">
    <div id="LogoContent">
        <a href="mainForm"><img src="images/storelogo.gif" width="80" /></a>
    </div>
</div>

<div id="Menu">
    <div id="MenuContent">

        <a href="cartForm"><img align="middle" name="img_cart" src="images/cart.gif" width="30" /></a>
        <img align="middle" src="images/seperate.gif" width="20"/>




        <c:if test="${sessionScope.loginAccount == null}">
            <a href="signOnForm" style="color:white;font-size: 25px"><b>登录</b></a>
            <img align="middle" src="images/seperate.gif" width="20"/>
        </c:if>
        <c:if test="${sessionScope.loginAccount != null}">
            <a href="signOff" style="color:white;font-size: 25px"><b>登出</b></a>
            <img align="middle" src="images/seperate.gif" width="20"/>

            <a href="myAccount" style="color: white;font-size: 25px"><b>我的账户</b></a>
            <img align="middle" src="images/seperate.gif" width="20"/>
        </c:if>



        <a href="help.html"><img align="middle" src="images/question.gif" width="35"/></a>
    </div>
</div>

<div id="Search" style="background-color: #eaac00">
    <div id="SearchContent">
        <form action="search" method="post">
            <input type="text" name="keyword" id="keyword" size="15" style="height: 25px"  >
            <input type="submit" value="搜索" style="height: 25px">
        </form>
        <div id="productAutoComplete">
            <ul id="productAutoList">

            </ul>
        </div>
    </div>
</div>

<div id="QuickLinks" class="quickbox">
    <a href="categoryForm?categoryId=FISH"><img src="images/fish.gif" width="40"/></a>
    <img src="images/sepblack.gif" width="20"/>
    <a href="categoryForm?categoryId=DOGS"><img src="images/dog.gif" width="40"/></a>
    <img src="images/sepblack.gif" width="20"/>
    <a href="categoryForm?categoryId=REPTILES"><img src="images/reptile.gif" width="40"/></a>
    <img src="images/sepblack.gif" width="20"/>
    <a href="categoryForm?categoryId=CATS"><img src="images/cat.gif" width="40"/></a>
    <img src="images/sepblack.gif" width="20"/>
    <a href="categoryForm?categoryId=BIRDS"><img src="images/bird.gif" width="40"/></a>
</div>

<div id="Content">
