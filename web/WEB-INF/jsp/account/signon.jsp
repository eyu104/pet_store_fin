
<%@ include file="../common/top.jsp"%>


<div id="Catalog">


    <form action="signOn" method="post">
        <p>Please enter your username and password.</p>
        <c:if test="${requestScope.signOnMsg != null}">
            <p><font color="red">${requestScope.signOnMsg}</font></p>
        </c:if>
        <p>
            Username:<input type="text" name="username"><br />
            Password:<input type="password" name="password"><br />
            Verification code:<input type="text" name="secode"><img border="0" src="checkCode"><br/>
        </p>
        <input type="submit" name="signon" value="Login">
    </form>
    Need a user name and password?
    <a href="newAccountForm">Register Now!</a>

</div>

<%@ include file="../common/bottom.jsp"%>
