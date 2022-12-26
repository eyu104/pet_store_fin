</div>

<div id="Footer">

    <div id="PoweredBy" style="background-color: #EAAC00FF">&nbsp<a href="http://www.csu.edu.cn" style="color: white"><b>www.csu.edu.cn</b></a>
    </div>

    <div id="Banner" style="background-color: #EAAC00FF">
        <!-- 登录用户的banner -->
        <c:if test="${sessionScope.loginAccount != null }">

                <c:if test="${sessionScope.loginAccount.bannerOption == true}">
                    ${sessionScope.loginAccount.bannerName}
                </c:if>
        </c:if>

    </div>

</div>
<script src="js/productAuto.js"></script>
<script src="js/account.js"></script>
<script src="js/cartUpdate.js"></script>
</body>
</html>
