<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="utf-8"%>

<h2>详细信息</h2>

<div class="account">

<table >
    <tr>
        <td>名:</td>
        <td>
<%--            <stripes:text name="account.firstName" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account_firstName" value="${sessionScope.loginAccount.firstName}" style="border-radius: 5px;border-width: 1px">
            </c:if>
            <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" name="account_firstName" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" name="account_firstName" style="border-radius: 5px;border-width: 1px" value="${sessionScope.newAccount.firstName}">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>姓:</td>
        <td>
<%--            <stripes:text name="account.lastName" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account_lastName" value="${sessionScope.loginAccount.lastName}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" name="account_lastName" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" name="account_lastName" value="${sessionScope.newAccount.lastName}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>邮箱:</td>
        <td>
<%--            <stripes:text size="40" name="account.email" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account_email" value="${sessionScope.loginAccount.email}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="40" name="account_email" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="40" name="account_email" value="${sessionScope.newAccount.email}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>

    </tr>
    <tr>
        <td>电话号码:</td>
        <td>
<%--            <stripes:text name="account.phone" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account_phone" value="${sessionScope.loginAccount.phone}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" name="account_phone" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" name="account_phone" value="${sessionScope.newAccount.phone}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>地址1:</td>
        <td>
<%--            <stripes:text size="40" name="account.address1" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account_address1" value="${sessionScope.loginAccount.address1}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="40" name="account_address1" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="40" name="account_address1" value="${sessionScope.newAccount.address1}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>地址2:</td>
        <td>
<%--            <stripes:text size="40" name="account.address2" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="40" name="account_address2" value="${sessionScope.loginAccount.address2}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="40" name="account_address2" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="40" name="account_address2" value="${sessionScope.newAccount.address2}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>城市:</td>
        <td>
<%--            <stripes:text name="account.city" />--%>

            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" name="account_city" value="${sessionScope.loginAccount.city}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" name="account_city" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" name="account_city" value="${sessionScope.newAccount.city}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>省份:</td>
        <td>
<%--            <stripes:text size="4" name="account.state" />--%>

            <c:if test="${sessionScope.loginAccount != null}" >
                <input type="text" size="4" name="account_state" value="${sessionScope.loginAccount.state}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="4" name="account_state" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="4" name="account_state" value="${sessionScope.newAccount.state}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
    <tr>
        <td>邮编:</td>
        <td>
<%--            <stripes:text size="10" name="account.zip" />--%>


            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="10" name="account_zip" value="${sessionScope.loginAccount.zip}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="10" name="account_zip" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="10" name="account_zip" value="${sessionScope.newAccount.zip}" style="border-radius: 5px;border-width: 1px">
            </c:if>
        </td>
    </tr>
    <tr>
        <td>国家:</td>
        <td>
<%--            <stripes:text size="15" name="account.country" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <input type="text" size="15" name="account_country" value="${sessionScope.loginAccount.country}" style="border-radius: 5px;border-width: 1px">
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="text" size="15" name="account_country" style="border-radius: 5px;border-width: 1px">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <input type="text" size="15" name="account_country" value="${sessionScope.newAccount.country}" style="border-radius: 5px;border-width: 1px">
            </c:if>

        </td>
    </tr>
</table>

<h2>主页信息</h2>

<table>
    <tr>
        <td>语言偏好:</td>
        <td>
<%--            <stripes:select name="account.languagePreference">--%>
<%--            <stripes:options-collection collection="${sessionScope.languages}" />--%>
<%--        </stripes:select>--%>

            <select name="account_languagePreference">
                <c:forEach var="language" items="${sessionScope.languages}">
                    <c:if test="${sessionScope.loginAccount.languagePreference.equals(language)}">
                        <option name="account_languagePreference" selected value="${language}" >${language}</option>
                    </c:if>
                    <c:if test="${!sessionScope.loginAccount.languagePreference.equals(language)}">
                        <option name="account_languagePreference" value="${language}" >${language}</option>
                    </c:if>



                </c:forEach>
            </select>


        </td>
    </tr>
    <tr>
        <td>宠物偏好:</td>
        <td>
<%--            <stripes:select name="account.favouriteCategoryId">--%>
<%--            <stripes:options-collection collection="${sessionScope.categories}" />--%>
<%--        </stripes:select>--%>

            <select name="account_favouriteCategoryId">
                <c:forEach var="category" items="${sessionScope.categories}">
                    <c:if test="${sessionScope.loginAccount.favouriteCategoryId.equals(category)}">
                        <option name="account_favouriteCategoryId" selected value="${category}">${category}</option>
                    </c:if>
                    <c:if test="${!sessionScope.loginAccount.favouriteCategoryId.equals(category)}">
                        <option name="account_favouriteCategoryId" value="${category}">${category}</option>
                    </c:if>




                </c:forEach>
            </select>

        </td>
    </tr>
    <tr>
        <td>启用MyList</td>
        <td>
<%--            <stripes:checkbox name="account.listOption" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <c:if test="${sessionScope.loginAccount.listOption == true}">
                    <input type="checkbox" checked="checked" name="account_listOption">
                </c:if>
                <c:if test="${sessionScope.loginAccount.listOption != true}">
                    <input type="checkbox"  name="account_listOption">
                </c:if>
            </c:if>
    <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="checkbox" name="account_listOption">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <c:if test="${sessionScope.newAccount.listOption == true}">
                    <input type="checkbox" checked="checked" name="account_listOption">
                </c:if>
                <c:if test="${sessionScope.newAccount.listOption != true}">
                    <input type="checkbox"  name="account_listOption">
                </c:if>
            </c:if>

        </td>
    </tr>
    <tr>
        <td>启用MyBanner</td>
        <td>
<%--            <stripes:checkbox name="account.bannerOption" />--%>
            <c:if test="${sessionScope.loginAccount != null}">
                <c:if test="${sessionScope.loginAccount.bannerOption == true}">
                    <input type="checkbox" checked="checked" name="account_bannerOption">
                </c:if>
                <c:if test="${sessionScope.loginAccount.bannerOption != true}">
                    <input type="checkbox"  name="account_bannerOption">
                </c:if>
            </c:if>
            <c:if test="${sessionScope.loginAccount == null && sessionScope.newAccount ==null}">
                <input type="checkbox" name="account_bannerOption">
            </c:if>

            <c:if test="${sessionScope.newAccount != null}">
                <c:if test="${sessionScope.newAccount.bannerOption == true}">
                    <input type="checkbox" checked="checked" name="account_bannerOption">
                </c:if>
                <c:if test="${sessionScope.newAccount.bannerOption != true}">
                    <input type="checkbox"  name="account_bannerOption">
                </c:if>
            </c:if>



        </td>
    </tr>

</table>

</div>
