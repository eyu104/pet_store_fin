
<%@ include file="../common/top.jsp"%>


<div id="Catalog">

<%--                                        1--%>
    <form action="continueOrder" method="post">
        <table>
            <tr>
                <th colspan=2>Payment Details</th>
            </tr>
            <tr>
                <td>Card Type:</td>
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
                <td>Card Number:</td>
                <td>
<%--                    <stripes:text name="order.creditCard" />--%>
                    <input type="text" name="order_creditCard" value="${sessionScope.order.creditCard}">
                    * Use a fake
                    number!
                </td>
            </tr>
            <tr>
                <td>Expiry Date (MM/YYYY):</td>
                <td>
<%--                    <stripes:text name="order.expiryDate" />--%>
                    <input type="text" name="order_expiryDate" value="${sessionScope.order.expiryDate}">
                </td>
            </tr>
            <tr>
                <th colspan=2>Billing Address</th>
            </tr>

            <tr>
                <td>First name:</td>
                <td>
<%--                    <stripes:text name="order.billToFirstName" />--%>
                    <input type="text" name="order_billToFirstName" value="${sessionScope.order.billToFirstName}">

                </td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td>
<%--                    <stripes:text name="order.billToLastName" />--%>
                    <input type="text" name="order_billToLastName" value="${sessionScope.order.billToLastName}">

                </td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td>
<%--                    <stripes:text size="40" name="order.billAddress1" />--%>
                    <input type="text" size="40" name="order_billAddress1" value="${sessionScope.order.billAddress1}">

                </td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td>
<%--                    <stripes:text size="40" name="order.billAddress2" />--%>
                    <input type="text" size="40" name="order_billAddress2" value="${sessionScope.order.billAddress2}">

                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
<%--                    <stripes:text name="order.billCity" />--%>
                    <input type="text" name="order_billCity" value="${sessionScope.order.billCity}">
                </td>
            </tr>
            <tr>
                <td>State:</td>
                <td>
<%--                    <stripes:text size="4" name="order.billState" />--%>
                    <input type="text" size="4" name="order_billState" value="${sessionScope.order.billState}">

                </td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td>
                    <input type="text" size="10" name="order_billZip" value="${sessionScope.order.billZip}">

<%--                    <stripes:text size="10" name="order.billZip" />--%>
                </td>
            </tr>
            <tr>
                <td>Country:</td>
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


        <input type="submit" name="newOrder" value="Continue">
    </form>



</div>

<%@ include file="../common/bottom.jsp"%>

