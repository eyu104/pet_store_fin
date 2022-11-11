<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>
<%--<div id="BackLink">--%>

<%--    <a href="mainForm">Return to Main Menu</a>--%>
<%--</div>--%>

<div id="Catalog">

    <h2>${sessionScope.category.name}</h2>

    <table>
        <tr>
            <th>产品ID</th>
            <th>名称</th>
        </tr>
        <c:forEach var="product" items="${sessionScope.productList}">
            <tr>
                <td>
                    <a href="productForm?productId=${product.productId}">${product.productId}</a>
                </td>
                <td>${product.name}</td>
            </tr>
        </c:forEach>
    </table>

</div>

<%@ include file="../common/bottom.jsp"%>
