<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<link rel="stylesheet" href="https://formden.com/static/assets/demos/bootstrap-iso/bootstrap-iso/bootstrap-iso.css" />
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<div id="Welcome" class="mp">
    <div id="WelcomeContent">
        <!-- 显示登录用户的姓 -->
    </div>
</div>

<div id="Main" class="mp">
    <div id="Sidebar" class="mp" >
        <%--        <div id="SidebarContent">--%>

        <ul class="mp">
            <li class="cateItem"><a href="categoryForm?categoryId=FISH" style="font-size: 25px"><b>宠物鱼</b></a>
                Saltwater, Freshwater <br /></li>
            <li class="cateItem"> <a href="categoryForm?categoryId=DOGS" style="font-size: 25px"><b>宠物狗</b></a>
                Various Breeds <br /></li>
            <li class="cateItem"><a href="categoryForm?categoryId=CATS" style="font-size: 25px"><b>宠物猫</b></a>
                Various Breeds, Exotic Varieties <br /></li>
            <li class="cateItem"><a href="categoryForm?categoryId=REPTILES" style="font-size: 25px"><b>宠物爬行类</b></a>
                Lizards, Turtles, Snakes <br /></li>
            <li class="cateItem"><a href="categoryForm?categoryId=BIRDS" style="font-size: 25px"><b>宠物鸟</b></a>
                Exotic Varieties<br/></li>

        </ul>
        <%--        </div>--%>
    </div>

    <%--    <div id="MainImage">--%>
    <%--        <div id="MainImageContent">--%>
    <%--            <map name="estoremap">--%>
    <%--                <area alt="Birds" coords="72,2,280,250"--%>
    <%--                      href="categoryForm?categoryId=BIRDS" shape="RECT" />--%>
    <%--                <area alt="Fish" coords="2,180,72,250"--%>
    <%--                      href="categoryForm?categoryId=FISH" shape="RECT" />--%>
    <%--                <area alt="Dogs" coords="60,250,130,320"--%>
    <%--                      href="categoryForm?categoryId=DOGS" shape="RECT" />--%>
    <%--                <area alt="Reptiles" coords="140,270,210,340"--%>
    <%--                      href="categoryForm?categoryId=REPTILES" shape="RECT" />--%>
    <%--                <area alt="Cats" coords="225,240,295,310"--%>
    <%--                      href="categoryForm?categoryId=CATS" shape="RECT" />--%>
    <%--                <area alt="Birds" coords="280,180,350,250"--%>
    <%--                      href="categoryForm?categoryId=BIRDS" shape="RECT" />--%>
    <%--            </map>--%>
    <%--            <img height="355" src="images/splash.gif" align="middle"--%>
    <%--                 usemap="#estoremap" width="350" />--%>
    <%--        </div>--%>
    <%--    </div>--%>


    <div id="MainImage" class="bootstrap-iso mp">
        <div id="myCarousel" class="carousel slide ">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <a href="categoryForm?categoryId=DOGS">
                        <img src="./images/1.gif" class="d-block w-100" alt="Dogs"
                             onmouseover="showInform(alt);" onmouseout="hiddenInform(event)">
                    </a>
                    <div class="carousel-caption"><a href="categoryForm?categoryId=DOGS" style="color: white">宠物狗</a></div>
                </div>
                <div class="item">
                    <a href="categoryForm?categoryId=BIRDS">
                        <img src="./images/2.gif" class="d-block w-100" alt="Birds"
                             onmouseover="showInform(alt);" onmouseout="hiddenInform(event)">
                    </a>
                    <div class="carousel-caption"><a href="categoryForm?categoryId=BIRDS" style="color: white">宠物鸟</a></div>
                </div>
                <div class="item">
                    <a href="categoryForm?categoryId=CATS">
                        <img src="./images/3.gif" class="d-block w-100" alt="Cats"
                             onmouseover="showInform(alt);" onmouseout="hiddenInform(event)">
                    </a>
                    <div class="carousel-caption"><a href="categoryForm?categoryId=CATS" style="color: white">宠物猫</a></div>
                </div>
                <div class="item">
                    <a href="categoryForm?categoryId=REPTILES">
                        <img src="./images/4.gif" class="d-block w-100" alt="Reptiles"
                             onmouseover="showInform(alt);" onmouseout="hiddenInform(event)">
                    </a>
                    <div class="carousel-caption"><a href="categoryForm?categoryId=REPTILES" style="color: white">宠物爬行类</a></div>
                </div>
                <div class="item">
                    <a href="categoryForm?categoryId=FISH">
                        <img src="./images/5.gif" class="d-block w-100" alt="Fish"
                             onmouseover="showInform(alt);" onmouseout="hiddenInform(event)">
                    </a>
                    <div class="carousel-caption" ><a href="categoryForm?categoryId=FISH" style="color: white">宠物鱼</a></div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"></a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"></a>
        </div>
    </div>

    <div id="inform" style="display: none">sssssssssss</div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/mouseEvent.js"></script>

    <script type="text/javascript">
        function showInform(categoryId) {
            console.log(categoryId);
            sendRequest("${pageContext.request.contextPath}/categoryShowJsServlet?categoryId=" + categoryId);
            //sendRequest("categoryShowJsServlet");
        }
    </script>

    <div id="Separator" class="mp">&nbsp;</div>
</div>
<%@ include file="../common/bottom.jsp"%>