<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>

<head>
    <title>MyPetStore</title>
    <link rel="StyleSheet" href="CSS/petstore.css" type="text/css" media="screen" />


</head>

<body>

<div id="Header">

        <div id="Logo" style="background-color: #EAAC00FF">
            <div id="LogoContent">
                <a href="mainForm"><img src="images/storelogo.gif" width="80" /></a>

            </div>
        </div>

        <div id="Menu" style="background-color: #EAAC00FF">
            <div id="MenuContent">
                <a href="cartForm"><img align="middle" name="img_cart" src="images/cart.gif" width="30"/></a>
                <img align="middle" src="images/separator.gif" />
                <c:if test="${sessionScope.loginAccount == null}">
                    <a href="signOnForm" style="color: white"><b>Sign In</b></a><img align="middle" src="images/separator.gif" />
                </c:if>
                <c:if test="${sessionScope.loginAccount != null}">
                    <a href="" style="color: white"><b>Sign Out</b></a>
                    <img align="middle" src="images/separator.gif" />
                    <a href="myAccount">My Account</a>
                    <img align="middle" src="images/separator.gif" />
                </c:if>
                <a href="help.html"><img align="middle" src="images/question.gif" width="35"/></a>
            </div>
        </div>

        <div id="Search" style="background-color: #EAAC00FF">

            <div id="SearchContent">
                <form action="" method="post">
                    <input type="text" name="keyword" size="14">
                    <input type="submit" value="Search">
                </form>

            </div>
        </div>

        <div id="QuickLinks">
            <a href="categoryForm?categoryId=FISH"><img src="images/fish.gif" width="40"/></a>
            <img src="images/separator.gif" />
            <a href="categoryForm?categoryId=DOGS"><img src="images/dog.gif" width="40"/></a>
            <img src="images/separator.gif" />
            <a href="categoryForm?categoryId=REPTILES"><img src="images/reptile.gif" width="40"/></a>
            <img src="images/separator.gif" />
            <a href="categoryForm?categoryId=CATS"><img src="images/cat.gif" width="40"/></a>
            <img src="images/separator.gif" />
            <a href="categoryForm?categoryId=BIRDS"><img src="images/bird.gif" width="40"/></a>
        </div>

    </div>

<div id="Content">
