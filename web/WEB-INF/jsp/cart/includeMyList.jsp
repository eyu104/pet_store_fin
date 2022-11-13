<c:if test="${!empty sessionScope.myList}">
<%@page pageEncoding="utf-8"%>

    <p>宠物收藏夹 <br />
        Shop for more of your favorite pets here.</p>
    <ul>
        <c:if test="${sessionScope.loginAccount.listOption == true}">
            <c:forEach var="product" items="${sessionScope.myList}">
                <li>
                    <a href="productForm?productId=${product.productId}">${product.name}</a>
                    (${product.productId})
                </li>
            </c:forEach>
        </c:if>

    </ul>

</c:if>
