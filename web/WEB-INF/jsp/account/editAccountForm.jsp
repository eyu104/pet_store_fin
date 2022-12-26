<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Catalog" >
    <div class="account">
<%--  <stripes:form--%>
<%--        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"--%>
<%--        focus="">--%>

<%--  <h3>User Information</h3>--%>

<%--  <table>--%>
<%--    <tr>--%>
<%--      <td>User ID:</td>--%>
<%--      <td>${actionBean.username}</td>--%>
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
<%--  <%@ include file="IncludeAccountFields.jsp"%>--%>

<%--  <stripes:submit name="editAccount" value="Save Account Information" />--%>

<%--</stripes:form>--%>


  <form action="editAccount" method="post">
    <h2>用户信息</h2>

    <table >
      <tr>
        <td>用户名:</td>
        <td>${sessionScope.loginAccount.username}</td>
      </tr>
      <tr>
        <td>新密码:</td>
        <td>
<%--          <stripes:text name="password" />--%>
          <input type="password" name="password" style="border-radius: 5px;border-width: 1px" required="required">
        </td>
      </tr>
      <tr>
        <td>重复密码:</td>
        <td>
<%--          <stripes:text name="repeatedPassword" />--%>
          <input type="password" name="repeatedPassword" style=";border-width: 1px;border-radius: 5px" required="required">
        </td>
      </tr>
    </table>
    <%@ include file="includeAccountFields.jsp"%>

<%--    <stripes:submit name="editAccount" value="repeatedPassword" />--%>
    <input type="submit" name="editAccount" value="更新信息" style=";border-radius: 5px;border-width: 1px">

  </form>


<%--  <stripes:link--%>
<%--        beanclass="org.mybatis.jpetstore.web.actions.OrderActionBean"--%>
<%--        event="listOrders">My Orders</stripes:link>--%>
  <a href="listOrdersForm" >我的订单</a>

    </div>
</div>

<%@ include file="../common/bottom.jsp"%>
