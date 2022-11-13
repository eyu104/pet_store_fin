<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<%--<div id="BackLink">--%>
<%--&lt;%&ndash;    <stripes:link&ndash;%&gt;--%>
<%--&lt;%&ndash;        beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"&ndash;%&gt;--%>
<%--&lt;%&ndash;        event="viewProduct">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <stripes:param name="productId" value="${actionBean.product.productId}" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    Return to ${actionBean.product.productId}&ndash;%&gt;--%>
<%--&lt;%&ndash;</stripes:link>&ndash;%&gt;--%>
<%--    <a href="productForm?productId=${sessionScope.product.productId}">Return to ${sessionScope.product.productId}</a>--%>
<%--</div>--%>

<div id="Catalog">

    <table class="itemtb">
        <tr>
            <td>${sessionScope.product.description}</td>
        </tr>
        <tr>
            <td><b> ${sessionScope.item.itemId} </b></td>
        </tr>
        <tr>
            <td><b><font size="4"> ${sessionScope.item.attribute1}
                ${sessionScope.item.attribute2} ${sessionScope.item.attribute3}
                ${sessionScope.item.attribute4} ${sessionScope.item.attribute5}
                ${sessionScope.product.name} </font></b></td>
        </tr>
        <tr>
            <td>${sessionScope.product.name}</td>
        </tr>
        <tr>
            <td><c:if test="${sessionScope.item.quantity <= 0}">
                延期订购
            </c:if> <c:if test="${sessionScope.item.quantity > 0}">
                ${sessionScope.item.quantity} in stock.
            </c:if></td>
        </tr>
        <tr>
            <td><fmt:formatNumber value="${sessionScope.item.listPrice}"
                                  pattern="$#,##0.00" /></td>
        </tr>

        <tr>
            <td>

<%--                <stripes:link class="Button"--%>
<%--                              beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"--%>
<%--                              event="addItemToCart">--%>
<%--                <stripes:param name="workingItemId" value="${actionBean.item.itemId}" />--%>
<%--                Add to Cart--%>
<%--            </stripes:link>--%>

                <a href="addItemToCart?workingItemId=${item.itemId}" class="Button">加入购物车</a>
            </td>
        </tr>
    </table>

</div>

<%@ include file="../common/bottom.jsp"%>



