<%@ include file="../common/top.jsp"%>

<div id="Catalog">


<%--                     1.2                --%>
    <form action="confirmOrderForm" method="post">
        <table>
            <tr>
                <th colspan=2>Shipping Address</th>
            </tr>

            <tr>
                <td>First name:</td>
                <td>
<%--                    <stripes:text name="order.shipToFirstName" />--%>
                    <input type="text" name="order_shipToFirstName" value="${sessionScope.order.shipToFirstName}">
                </td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td>
<%--                    <stripes:text name="order.shipToLastName" />--%>
                    <input type="text" name="order_shipToLastName" value="${sessionScope.order.shipToLastName}">

                </td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td>
<%--                    <stripes:text size="40" name="order.shipAddress1" />--%>
                    <input type="text" size="40" name="order_shipAddress1" value="${sessionScope.order.shipAddress1}">

                </td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td>
<%--                    <stripes:text size="40" name="order.shipAddress2" />--%>
                    <input type="text" size="40" name="order_shipAddress2" value="${sessionScope.order.shipAddress2}">
                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
<%--                    <stripes:text name="order.shipCity" />--%>
                    <input type="text" name="order_shipCity" value="${sessionScope.order.shipCity}">
                </td>
            </tr>
            <tr>
                <td>State:</td>
                <td>
<%--                    <stripes:text size="4" name="order.shipState" />--%>
                    <input type="text" size="4" name="order_shipState" value="${sessionScope.order.shipState}">
                </td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td>
<%--                    <stripes:text size="10" name="order.shipZip" />--%>
                    <input type="text" size="10" name="order_shipZip" value="${sessionScope.order.shipZip}">
                </td>
            </tr>
            <tr>
                <td>Country:</td>
                <td>
<%--                    <stripes:text size="15" name="order.shipCountry" />--%>
                    <input type="text" size="15" name="order_shipCountry" value="${sessionScope.order.shipCountry}">
                </td>
            </tr>


        </table>

<%--        <stripes:submit name="newOrder" value="Continue" />--%>
        <input type="submit" name="newOrder" value="Continue">
    </form>
</div>

<%@ include file="../common/bottom.jsp"%>