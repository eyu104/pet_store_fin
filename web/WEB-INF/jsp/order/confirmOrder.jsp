<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="BackLink" class="mp">

    <a href="" >返回主页面</a>

</div>
<%--                                      1.1                        --%>
<div id="Catalog" class="mp">请确认一下信息

    <table class="mp">
        <tr>
            <th align="center" colspan="2"><font size="4"><b>Order</b></font>
                <br />
                <font size="3"><b>
                    <fmt:formatDate
                        value="${sessionScope.order.orderDate}" pattern="yyyy/MM/dd hh:mm:ss" /></b></font>
            </th>
        </tr>

        <tr>
            <th colspan="2">账单地址</th>
        </tr>
        <tr>
            <td>名:</td>
            <td><c:out value="${sessionScope.order.billToFirstName}" /></td>
        </tr>
        <tr>
            <td>姓:</td>
            <td><c:out value="${sessionScope.order.billToLastName}" /></td>
        </tr>
        <tr>
            <td>地址1:</td>
            <td><c:out value="${sessionScope.order.billAddress1}" /></td>
        </tr>
        <tr>
            <td>地址2:</td>
            <td><c:out value="${sessionScope.order.billAddress2}" /></td>
        </tr>
        <tr>
            <td>城市:</td>
            <td><c:out value="${sessionScope.order.billCity}" /></td>
        </tr>
        <tr>
            <td>省份:</td>
            <td><c:out value="${sessionScope.order.billState}" /></td>
        </tr>
        <tr>
            <td>邮编:</td>
            <td><c:out value="${sessionScope.order.billZip}" /></td>
        </tr>
        <tr>
            <td>国家:</td>
            <td><c:out value="${sessionScope.order.billCountry}" /></td>
        </tr>
        <tr>
            <th colspan="2">Shipping Address</th>
        </tr>
        <tr>
            <td>名:</td>
            <td><c:out value="${sessionScope.order.shipToFirstName}" /></td>
        </tr>
        <tr>
            <td>姓:</td>
            <td><c:out value="${sessionScope.order.shipToLastName}" /></td>
        </tr>
        <tr>
            <td>地址1:</td>
            <td><c:out value="${sessionScope.order.shipAddress1}" /></td>
        </tr>
        <tr>
            <td>地址2:</td>
            <td><c:out value="${sessionScope.order.shipAddress2}" /></td>
        </tr>
        <tr>
            <td>城市:</td>
            <td><c:out value="${sessionScope.order.shipCity}" /></td>
        </tr>
        <tr>
            <td>省份:</td>
            <td><c:out value="${sessionScope.order.shipState}" /></td>
        </tr>
        <tr>
            <td>邮编:</td>
            <td><c:out value="${sessionScope.order.shipZip}" /></td>
        </tr>
        <tr>
            <td>国家:</td>
            <td><c:out value="${sessionScope.order.shipCountry}" /></td>
        </tr>

    </table>

<%--    <stripes:link class="Button"--%>
<%--                  beanclass="org.mybatis.jpetstore.web.actions.OrderActionBean"--%>
<%--                  event="newOrder">--%>
<%--        <stripes:param name="confirmed" value="true" />--%>
<%--        Confirm--%>
<%--    </stripes:link>--%>
    <a href="confirmOrderForm" class="Button">
    <%--    event="newOrder--%>
       确认
    </a>
</div>

<%@ include file="../common/bottom.jsp"%>





