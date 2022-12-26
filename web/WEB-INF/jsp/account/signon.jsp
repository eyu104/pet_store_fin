
<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="BackLink">

    <a href="mainForm">Return to Main Menu</a>
</div>

<div id="Catalog">

    <form class="loginbox" id="loginForm" action="signOn" method="post" onsubmit="javascript:check()" >
        <p><b>请输入你的用户名和密码</b></p>
        <p id="signOnMsg"><font color="red"></font></p>
        <input type="text" name="username" id="username" style="border-radius: 5px;border-width: 1px" placeholder="用户名:">
        <input type="password" name="password" id="password" style="border-radius: 5px;border-width: 1px" placeholder="密 码:">
        <input type="text" name="secode" id="secode" style="border-radius: 5px;border-width: 1px" placeholder="验证码:"><br/>
        <img border="0" src="checkCode" onclick="this.src='checkCode?'+Math.random();">
        <input type="submit" name="signon" id="signon"  value="登录" style="border-width: 1px;border-radius: 5px;border-color: #ccc;width: 100px;height: 30px;font-size: 20px"><br/>
        没有用户名和密码？
        <a href="newAccountForm">立马注册!</a>
    </form>
</div>

<%@ include file="../common/bottom.jsp"%>
