<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Catalog" class="mp imp">

    <h2>${sessionScope.product.name}</h2>

    <table class="mp">
        <tr class="firsttr">
            <th>商品ID</th>
            <th>产品ID</th>
            <th>描述</th>
            <th>标价</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${sessionScope.itemList}">
            <tr>
                <td>
<%--                    <stripes:link--%>
<%--                        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"--%>
<%--                        event="viewItem">--%>
<%--                    <stripes:param name="itemId" value="${item.itemId}" />--%>
<%--                    ${item.itemId}--%>
<%--                </stripes:link>--%>
                <a href="itemForm?itemId=${item.itemId}">${item.itemId}</a>
                </td>
                <td>${item.product.productId}</td>
                <td>${item.attribute1} ${item.attribute2} ${item.attribute3}
                        ${item.attribute4} ${item.attribute5} ${sessionScope.product.name}</td>
                <td><fmt:formatNumber value="${item.listPrice}"
                                      pattern="$#,##0.00" /></td>
                <td>
<%--                    <stripes:link class="Button"--%>
<%--                                  beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"--%>
<%--                                  event="addItemToCart">--%>
<%--                    <stripes:param name="workingItemId" value="${item.itemId}" />--%>
<%--                    Add to Cart--%>
<%--                </stripes:link>--%>
                <a href="addItemToCart?workingItemId=${item.itemId}" class="Button">加入购物车</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

<%@ include file="../common/bottom.jsp"%>





