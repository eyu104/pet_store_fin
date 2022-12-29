<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<h2>我的订单</h2>

<table class="mp">
    <tr>
        <th>订单ID</th>
        <th>日期</th>
        <th>总价</th>
    </tr>

    <c:forEach var="order" items="${sessionScope.orderList}">
        <tr>
            <td>
<%--                <stripes:link--%>
<%--                    beanclass="org.mybatis.jpetstore.web.actions.OrderActionBean"--%>
<%--                    event="viewOrder">--%>
<%--                <stripes:param name="orderId" value="${order.orderId}" />--%>
<%--                ${order.orderId}--%>
<%--            </stripes:link>--%>

<%--                event="viewOrder"--%>
                <a href="viewOrderForm?orderId=${order.orderId}">${order.orderId}</a>

            </td>
            <td>
                <fmt:formatDate value="${order.orderDate}"
                                pattern="yyyy/MM/dd hh:mm:ss" />
            </td>
            <td>
                <fmt:formatNumber value="${order.totalPrice}"
                                  pattern="$#,##0.00" />
            </td>
        </tr>
    </c:forEach>
</table>

<%@ include file="../common/bottom.jsp"%>


