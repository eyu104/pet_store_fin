<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Catalog">

  <div id="Cart">

    <h2>购物车</h2>
<%--    <stripes:form--%>
<%--            beanclass="org.mybatis.jpetstore.web.actions.CartActionBean">--%>


<%--    </stripes:form>--%>


    <form action="updateCart" method="post">
      <table>
        <tr class="firsttr">
          <th><b>商品ID</b></th>
          <th><b>产品ID</b></th>
          <th><b>描述</b></th>
          <th><b>是否有现货?</b></th>
          <th><b>数量</b></th>
          <th><b>标价</b></th>
          <th><b>总价</b></th>
          <th>&nbsp;</th>
        </tr>

        <c:if test="${sessionScope.cart.numberOfItems == 0}">
          <tr>
            <td colspan="8"><b>您的购物车是空的</b></td>
          </tr>
        </c:if>

        <c:forEach var="cartItem" items="${sessionScope.cart.cartItems}">
          <tr>
            <td>
<%--              <stripes:link--%>
<%--                    beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean"--%>
<%--                    event="viewItem">--%>
<%--              <stripes:param name="itemId" value="${cartItem.item.itemId}" />--%>
<%--              ${cartItem.item.itemId}--%>
<%--            </stripes:link>--%>

              <a href="itemForm?itemId=${cartItem.item.itemId}">${cartItem.item.itemId}</a>
            </td>
            <td>${cartItem.item.product.productId}</td>
            <td>${cartItem.item.attribute1} ${cartItem.item.attribute2}
                ${cartItem.item.attribute3} ${cartItem.item.attribute4}
                ${cartItem.item.attribute5} ${cartItem.item.product.name}</td>
            <td>${cartItem.inStock}</td>
            <td>
<%--              <stripes:text size="3" name="${cartItem.item.itemId}"--%>
<%--                              value="${cartItem.quantity}" />--%>

              <input type="text" name="${cartItem.item.itemId}" value="${cartItem.quantity}">
            </td>
            <td><fmt:formatNumber value="${cartItem.item.listPrice}"
                                  pattern="$#,##0.00" /></td>
            <td><fmt:formatNumber value="${cartItem.total}"
                                  pattern="$#,##0.00" /></td>
            <td>
<%--              <stripes:link class="Button"--%>
<%--                              beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"--%>
<%--                              event="removeItemFromCart">--%>
<%--              <stripes:param name="cartItem" value="${cartItem.item.itemId}" />--%>
<%--              Remove--%>
<%--            </stripes:link>--%>
            <a href="removeCartItem?workingItemId=${cartItem.item.itemId}" class="Button">移除</a>
            </td>
          </tr>
        </c:forEach>
        <tr>
          <td colspan="7">总价:
            <fmt:formatNumber value="${sessionScope.cart.subTotal}" pattern="$#,##0.00" />
<%--            <stripes:submit--%>
<%--                  name="updateCartQuantities" value="Update Cart" />--%>
            <c:if test="${sessionScope.cart.subTotal != 0 && sessionScope.cart != null }">
              <input type="submit" value="更新购物车" style="border-radius: 5px;">
            </c:if>

          </td>


          <td>&nbsp;</td>
        </tr>
      </table>
    </form>


    <c:if test="${sessionScope.cart.numberOfItems > 0}">

<%--    <stripes:link class="Button"--%>
<%--                  beanclass="org.mybatis.jpetstore.web.actions.OrderActionBean"--%>
<%--                  event="newOrderForm">--%>
<%--      Proceed to Checkout--%>
<%--    </stripes:link>--%>

      <a href="newOrderForm" class="Button">进行结算</a>
  </c:if>
  </div>

  <div id="MyList">
    <c:if test="${sessionScope.loginAccount != null}">

        <c:if test="${!empty sessionScope.loginAccount.listOption}">
          <%@ include file="includeMyList.jsp"%>
        </c:if>
      </c:if>

  </div>

  <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/bottom.jsp"%>