
<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>
<div id="Catalog">


<%--    <form  action="signOn" method="post" >--%>
<%--        <p><b>Please enter your username and password</b></p>--%>
<%--        <c:if test="${requestScope.signOnMsg != null}">--%>
<%--            <p><font color="red">${requestScope.signOnMsg}</font></p>--%>
<%--        </c:if>--%>

<%--        <table >--%>
<%--            <tr>--%>
<%--                <td >Username:</td>--%>
<%--                <td>--%>
<%--                        <input type="text" name="username" style="border-radius: 5px;border-width: 1px">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Password:</td>--%>
<%--                <td>--%>
<%--                        <input type="password" name="password" style="border-radius: 5px;border-width: 1px">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Verification code:</td>--%>
<%--                <td>--%>
<%--                        <input type="text" name="secode" style="border-radius: 5px;border-width: 1px"><br/>--%>
<%--                        <img border="0" src="checkCode" onclick="this.src='checkCode?'+Math.random();">--%>
<%--                </td>--%>
<%--            </tr>--%>

<%--        </table>--%>
<%--        <input type="submit" name="signon"  value="Login" style="border-width: 1px;border-radius: 5px;border-color: #ccc;width: 100px;height: 30px;font-size: 20px">--%>
<%--    </form>--%>

    <form class="loginbox" action="signOn" method="post" >
        <p><b>请输入你的用户名和密码</b></p>
        <c:if test="${requestScope.signOnMsg != null}">
            <p><font color="red">${requestScope.signOnMsg}</font></p>
        </c:if>
        <input type="text" name="username" style="border-radius: 5px;border-width: 1px" placeholder="用户名:">
        <input type="password" name="password" style="border-radius: 5px;border-width: 1px" placeholder="密 码:">
        <input type="text" name="secode" style="border-radius: 5px;border-width: 1px" placeholder="验证码:"><br/>
        <img border="0" src="checkCode" onclick="this.src='checkCode?'+Math.random();">
        <input type="submit" name="signon"  value="登录" style="border-width: 1px;border-radius: 5px;border-color: #ccc;width: 100px;height: 30px;font-size: 20px"><br/>
        没有用户名和密码？
        <a href="newAccountForm">立马注册!</a>

    </form>


<%--    Need a user name and password?--%>
<%--    <a href="newAccountForm">Register Now!</a>--%>

</div>

<%@ include file="../common/bottom.jsp"%>
