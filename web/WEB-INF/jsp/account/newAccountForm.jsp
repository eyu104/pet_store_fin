<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Catalog mp" >
    <div class="account mp">
<%--  <stripes:form--%>
<%--        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"--%>
<%--        focus="">--%>
<%--   --%>

<%--  <h3>User Information</h3>--%>

<%--  <table>--%>
<%--    <tr>--%>
<%--      <td>User ID:</td>--%>
<%--      <td><stripes:text name="username" /></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>New password:</td>--%>
<%--      <td><stripes:text name="password" /></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--      <td>Repeat password:</td>--%>
<%--      <td><stripes:text name="repeatedPassword" /></td>--%>
<%--    </tr>--%>
<%--  </table>--%>

<%--  <%@ include file="includeAccountFields.jsp"%>--%>

<%--  <stripes:submit name="newAccount" value="Save Account Information" />--%>

<%--</stripes:form>--%>
  <form action="newAccount?" method="post" class="mp">
    <h2>用户信息</h2>

    <table class="mp">
      <tr>
        <td>用户名:</td>
        <td>
            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" name="username" style="border-radius: 5px;border-width: 1px" value="${sessionScope.newAccount.username}">
            </c:if>
            <c:if test="${sessionScope.newAccount == null}">
                <input type="text" name="username" id="username2" style="border-radius: 5px;border-width: 1px" required="required">
                <p id="usernameMsg"></p>
            </c:if>
<%--          <stripes:text name="username" />--%>

        </td>
      </tr>
      <tr>
        <td>密码:</td>
        <td>
<%--          <stripes:text name="password" />--%>
          <input type="password" name="password" style="border-radius: 5px;border-width: 1px" required="required">
        </td>
      </tr>
      <tr>
        <td>重复密码:</td>
        <td>
<%--          <stripes:text name="repeatedPassword" />--%>
          <input type="password" name="repeatedPassword" style="border-radius: 5px;border-width: 1px" required="required">
        </td>
      </tr>
        <tr>
            <td>验证码</td>
            <td>
                <input type="text" name="secode" id="secode" style="border-radius: 5px;border-width: 1px" placeholder="验证码:"><br/>
                <img border="0" src="checkCode" onclick="this.src='checkCode?'+Math.random();">
                <p id="signOnMsg"><font color="red"></font></p>
            </td>
        </tr>
    </table>
      <c:if test="${sessionScope.Msg != null}">
          <p><font color="red">${sessionScope.Msg}</font></p>
      </c:if>
    <%@ include file="includeAccountFields.jsp"%>

<%--    <stripes:submit name="newAccount" value="Save Account Information" />--%>
    <input type="submit" name="newAccount" value="保存用户信息" style="border-radius: 5px;border-width: 1px;height: 30px;border-color: white" >

  </form>
    </div>
</div>

<%@ include file="../common/bottom.jsp"%>