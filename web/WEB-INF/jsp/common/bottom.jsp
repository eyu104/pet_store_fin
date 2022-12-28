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
<%--<script src="js/account.js"></script>--%>
<script src="js/cartUpdate.js"></script>

<script src="./assets/js/vendor/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/vendor/bootstrap.min.js" type="text/javascript"></script>
<script src="./assets/js/vendor/share.js" type="text/javascript"></script>
<script src="./assets/js/functions.js" type="text/javascript"></script>

<!-- Animation -->
<script src="./assets/js/vendor/aos.js" type="text/javascript"></script>
<noscript>
    <style>
        *[data-aos] {
            display: block !important;
            opacity: 1 !important;
            visibility: visible !important;
        }
    </style>
</noscript>
<script>
    AOS.init({
        duration: 700
    });
</script>
<%----%>
<!-- Disable animation on less than 1200px, change value if you like -->
<script>
    AOS.init({
        disable: function () {
            var maxWidth = 1200;
            return window.innerWidth < maxWidth;
        }
    });
</script>
<%----%>
<!-- Carousel Height Smooth -->
<script>
    $('.carousel').on('slide.bs.carousel', function (event) {
        var height = $(event.relatedTarget).height();
        var $innerCarousel = $(event.target).find('.carousel-inner');
        $innerCarousel.animate({
            height: height
        });
    });
</script>
<%----%>
<!-- Popovers -->
<script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
    $('.popover-dismiss').popover({
        trigger: 'focus'
    })
</script>
<%----%>
<!-- Tooltips -->
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>
</body>
</html>
