
<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>


<div id="Catalog " class="mp">

<%--                                        1--%>
    <form action="continueOrder" method="post" class="mp">
        <table>
            <tr>
                <th colspan=2>支付明细</th>
            </tr>
            <tr>
                <td>支付卡类型:</td>
                <td>
<%--                    <stripes:select name="order.cardType">--%>
<%--                    <stripes:options-collection--%>
<%--                            collection="${actionBean.creditCardTypes}" />--%>
<%--                </stripes:select>--%>
                <select name="order_cardType">
                    <c:forEach items="${sessionScope.creditCardTypes}" var="item">
                        <c:if test="${sessionScope.order.cardType.equals(item)}">
                            <option value="${item}" selected name="order.cardType">
                                    ${item}
                            </option>
                        </c:if>
                        <c:if test="${!sessionScope.order.cardType.equals(item)}">
                            <option value="${item}" name="order.cardType">
                                    ${item}
                            </option>
                        </c:if>
                    </c:forEach>
                </select>
                </td>
            </tr>
            <tr>
                <td>卡号:</td>
                <td>
<%--                    <stripes:text name="order.creditCard" />--%>
                    <input type="text" name="order_creditCard" value="${sessionScope.order.creditCard}">
                </td>
            </tr>
            <tr>
                <td>送达日期 (MM/YYYY):</td>
                <td>
<%--                    <stripes:text name="order.expiryDate" />--%>
                    <input type="text" name="order_expiryDate" value="${sessionScope.order.expiryDate}">
                </td>
            </tr>
            <tr>
                <th colspan=2>账单地址</th>
            </tr>

            <tr>
                <td>名:</td>
                <td>
<%--                    <stripes:text name="order.billToFirstName" />--%>
                    <input type="text" name="order_billToFirstName" value="${sessionScope.order.billToFirstName}">

                </td>
            </tr>
            <tr>
                <td>姓:</td>
                <td>
<%--                    <stripes:text name="order.billToLastName" />--%>
                    <input type="text" name="order_billToLastName" value="${sessionScope.order.billToLastName}">

                </td>
            </tr>
            <tr>
                <td>地址1:</td>
                <td>
<%--                    <stripes:text size="40" name="order.billAddress1" />--%>
                    <input type="text" size="40" name="order_billAddress1" value="${sessionScope.order.billAddress1}">

                </td>
            </tr>
            <tr>
                <td>地址2:</td>
                <td>
<%--                    <stripes:text size="40" name="order.billAddress2" />--%>
                    <input type="text" size="40" name="order_billAddress2" value="${sessionScope.order.billAddress2}">

                </td>
            </tr>
            <tr>
                <td>城市:</td>
                <td>
<%--                    <stripes:text name="order.billCity" />--%>
                    <input type="text" name="order_billCity" value="${sessionScope.order.billCity}">
                </td>
            </tr>
            <tr>
                <td>省份:</td>
                <td>
<%--                    <stripes:text size="4" name="order.billState" />--%>
                    <input type="text" size="4" name="order_billState" value="${sessionScope.order.billState}">

                </td>
            </tr>
            <tr>
                <td>邮编:</td>
                <td>
                    <input type="text" size="10" name="order_billZip" value="${sessionScope.order.billZip}">

<%--                    <stripes:text size="10" name="order.billZip" />--%>
                </td>
            </tr>
            <tr>
                <td>国家:</td>
                <td>
<%--                    <stripes:text size="15" name="order.billCountry" />--%>
                    <input type="text" size="15" name="order_billCountry" value="${sessionScope.order.billCountry}">

                </td>
            </tr>

            <tr>
                <td colspan=2>
<%--                    <stripes:checkbox name="shippingAddressRequired" />--%>
                    <input type="checkbox" name="shippingAddressRequired">
                    Ship to different address...
                </td>
            </tr>

        </table>


        <input class="mp" type="submit" name="newOrder" value="继续">
    </form>



</div>

<%@ include file="../common/bottom.jsp"%>

