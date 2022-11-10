
<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>
<div id="Catalog">


    <form action="signOn" method="post" >
        <p>Please enter your username and password.</p>
        <c:if test="${requestScope.signOnMsg != null}">
            <p><font color="red">${requestScope.signOnMsg}</font></p>
        </c:if>

        <table >
            <tr>
                <td >Username:</td>
                <td>
                        <input type="text" name="username" style="border-radius: 3px;">
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                        <input type="password" name="password" style="border-radius: 3px;">
                </td>
            </tr>
            <tr>
                <td>Verification code:</td>
                <td>
                        <input type="text" name="secode" style="border-radius: 3px;"><img border="0" src="checkCode" onclick="this.src='checkCode?'+Math.random();">
                </td>
            </tr>

        </table>
        <input type="submit" name="signon"  value="Login" style="background-color: #eaac00;border-radius: 3px;border-color: #ccc">
    </form>


    Need a user name and password?
    <a href="newAccountForm">Register Now!</a>

</div>

<%@ include file="../common/bottom.jsp"%>
