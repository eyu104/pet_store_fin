<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Catalog">
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
  <form action="newAccount?" method="post">
    <h3>User Information</h3>

    <table>
      <tr>
        <td>User ID:</td>
        <td>
<%--          <stripes:text name="username" />--%>
          <input type="text" name="username">
        </td>
      </tr>
      <tr>
        <td>New password:</td>
        <td>
<%--          <stripes:text name="password" />--%>
          <input type="text" name="password">
        </td>
      </tr>
      <tr>
        <td>Repeat password:</td>
        <td>
<%--          <stripes:text name="repeatedPassword" />--%>
          <input type="text" name="repeatedPassword">
        </td>
      </tr>
    </table>

    <%@ include file="includeAccountFields.jsp"%>

<%--    <stripes:submit name="newAccount" value="Save Account Information" />--%>
    <input type="submit" name="newAccount" value="Save Account Information">

  </form>

</div>

<%@ include file="../common/bottom.jsp"%>