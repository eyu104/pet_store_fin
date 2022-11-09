<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>Account Information</h3>

<table>
    <tr>
        <td>First name:</td>
        <td>
<%--            <stripes:text name="account.firstName" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account.firstName" value="${sessionScope.loginAccount.firstName}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" name="account.firstName">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Last name:</td>
        <td>
<%--            <stripes:text name="account.lastName" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account.lastName" value="${sessionScope.loginAccount.lastName}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" name="account.lastName">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>
<%--            <stripes:text size="40" name="account.email" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account.email" value="${sessionScope.loginAccount.email}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="40" name="account.email">
            </c:if>
        </td>

    </tr>
    <tr>
        <td>Phone:</td>
        <td>
<%--            <stripes:text name="account.phone" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account.phone" value="${sessionScope.loginAccount.phone}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" name="account.phone">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Address 1:</td>
        <td>
<%--            <stripes:text size="40" name="account.address1" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account.address1" value="${sessionScope.loginAccount.address1}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="40" name="account.address1">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Address 2:</td>
        <td>
<%--            <stripes:text size="40" name="account.address2" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account.address2" value="${sessionScope.loginAccount.address2}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="40" name="account.address2">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>City:</td>
        <td>
<%--            <stripes:text name="account.city" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account.city" value="${sessionScope.loginAccount.city}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" name="account.city">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>State:</td>
        <td>
<%--            <stripes:text size="4" name="account.state" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="4" name="account.state" value="${sessionScope.loginAccount.state}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="4" name="account.state">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Zip:</td>
        <td>
<%--            <stripes:text size="10" name="account.zip" />--%>


            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="10" name="account.zip" value="${sessionScope.loginAccount.zip}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="10" name="account.zip">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Country:</td>
        <td>
<%--            <stripes:text size="15" name="account.country" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="15" name="account.country" value="${sessionScope.loginAccount.country}">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="text" size="15" name="account.country">
            </c:if>


        </td>
    </tr>
</table>

<h3>Profile Information</h3>

<table>
    <tr>
        <td>Language Preference:</td>
        <td>
<%--            <stripes:select name="account.languagePreference">--%>
<%--            <stripes:options-collection collection="${sessionScope.languages}" />--%>
<%--        </stripes:select>--%>






            <select name="account.languagePreference">
                <c:forEach var="language" items="${sessionScope.languages}">
                    <option name="account.languagePreference" value="${language}" >${language}</option>
                </c:forEach>
            </select>




        </td>
    </tr>
    <tr>
        <td>Favourite Category:</td>
        <td>
<%--            <stripes:select name="account.favouriteCategoryId">--%>
<%--            <stripes:options-collection collection="${sessionScope.categories}" />--%>
<%--        </stripes:select>--%>

            <select name="account.favouriteCategoryId">
                <c:forEach var="category" items="${sessionScope.categories}">
                    <option name="account.favouriteCategoryId" value="${category}">${category}</option>
                </c:forEach>
            </select>

        </td>
    </tr>
    <tr>
        <td>Enable MyList</td>
        <td>
<%--            <stripes:checkbox name="account.listOption" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <c:if test="${sessionScope.loginAccount.listOption == true}">
                    <input type="checkbox" checked="checked" name="account.bannerOption">
                </c:if>
                <c:if test="${sessionScope.loginAccount.listOption != true}">
                    <input type="checkbox"  name="account.bannerOption">
                </c:if>
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="checkbox" name="account.bannerOption">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>Enable MyBanner</td>
        <td>
<%--            <stripes:checkbox name="account.bannerOption" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <c:if test="${sessionScope.loginAccount.bannerOption == true}">
                    <input type="checkbox" checked="checked" name="account.bannerOption">
                </c:if>
                <c:if test="${sessionScope.loginAccount.bannerOption != true}">
                    <input type="checkbox"  name="account.bannerOption">
                </c:if>
            </c:if>
            <c:if test="${sessionScope.loginAccount == null}">
                <input type="checkbox" name="account.bannerOption">
            </c:if>


        </td>
    </tr>

</table>
