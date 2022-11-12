<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="BackLink">
    <a href="" >Return to Main Menu</a>
</div>

<div id="Catalog">

    <table>
        <tr>
            <th align="center" colspan="2">Order #${sessionScope.order.orderId}
                <fmt:formatDate value="${sessionScope.order.orderDate}"
                                pattern="yyyy/MM/dd hh:mm:ss" /></th>
        </tr>
        <tr>
            <th colspan="2">支付明细</th>
        </tr>
        <tr>
            <td>支付卡类型:</td>
            <td><c:out value="${sessionScope.order.cardType}" /></td>
        </tr>
        <tr>
            <td>卡号:</td>
            <td><c:out value="${sessionScope.order.creditCard}" /> </td>
        </tr>
        <tr>
            <td>送达日期(MM/YYYY):</td>
            <td><c:out value="${sessionScope.order.expiryDate}" /></td>
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
            <th colspan="2">收货地址</th>
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
        <tr>
            <td>快递公司:</td>
            <td><c:out value="${sessionScope.order.courier}" /></td>
        </tr>
        <tr>
            <td colspan="2">进度: <c:out value="${sessionScope.order.status}" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <table>
                    <tr>
                        <th>产品ID</th>
                        <th>描述</th>
                        <th>数量</th>
                        <th>价格</th>
                        <th>总价</th>
                    </tr>
                    <c:forEach var="lineItem" items="${sessionScope.order.lineItems}">
                        <tr>
                            <td>
<%--                                <stripes:link--%>
<%--                                    beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"--%>
<%--                                    event="viewItem">--%>
<%--                                <stripes:param name="itemId" value="${lineItem.item.itemId}" />--%>
<%--                                ${lineItem.item.itemId}--%>
<%--                            </stripes:link>--%>

<%--                                event="viewItem">--%>
                            <a href="">
                                    ${lineItem.item.itemId}
                            </a>
                            </td>
                            <td><c:if test="${lineItem.item != null}">
                                ${lineItem.item.attribute1}
                                ${lineItem.item.attribute2}
                                ${lineItem.item.attribute3}
                                ${lineItem.item.attribute4}
                                ${lineItem.item.attribute5}
                                ${lineItem.item.product.name}
                            </c:if> <c:if test="${lineItem.item == null}">
                                <i>{description unavailable}</i>
                            </c:if></td>

                            <td>${lineItem.quantity}</td>
                            <td><fmt:formatNumber value="${lineItem.unitPrice}"
                                                  pattern="$#,##0.00" /></td>
                            <td><fmt:formatNumber value="${lineItem.total}"
                                                  pattern="$#,##0.00" /></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <th colspan="5">总价: <fmt:formatNumber
                                value="${sessionScope.order.totalPrice}" pattern="$#,##0.00" /></th>
                    </tr>
                </table>
            </td>
        </tr>

    </table>

</div>

<%@ include file="../common/bottom.jsp"%>
