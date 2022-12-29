
<%@ include file="../common/top.jsp"%>

<div id="Catalog" class="mp">

    <table class="mp">
        <tr>
            <th>description</th>
            <th>Product ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="product" items="${sessionScope.productList}">
            <tr>
                <td>
                    <a href="productForm?productId=${product.productId}">${product.description}</a>
                </td>
                <td>
                    <b>
                        <a href="productForm?productId=${product.productId}" font color="BLACK">${product.productId}</a>
                    </b>
                </td>
                <td>${product.name}</td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
        </tr>

    </table>

</div>

<%@ include file="../common/bottom.jsp"%>
