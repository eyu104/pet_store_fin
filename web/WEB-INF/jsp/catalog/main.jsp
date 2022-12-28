<%@ include file="../common/top.jsp"%>
<%@page pageEncoding="utf-8"%>

<div id="Welcome">
    <div id="WelcomeContent">
        <!-- 显示登录用户的姓 -->
    </div>
</div>

<div id="Main">
    <div id="Sidebar">
<%--        <div id="SidebarContent">--%>

            <ul>
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

    <div id="MainImage">
        <div id="MainImageContent">
            <map name="estoremap">
                <area alt="Birds" coords="72,2,280,250"
                      href="categoryForm?categoryId=BIRDS" shape="RECT" />
                <area alt="Fish" coords="2,180,72,250"
                      href="categoryForm?categoryId=FISH" shape="RECT" />
                <area alt="Dogs" coords="60,250,130,320"
                      href="categoryForm?categoryId=DOGS" shape="RECT" />
                <area alt="Reptiles" coords="140,270,210,340"
                      href="categoryForm?categoryId=REPTILES" shape="RECT" />
                <area alt="Cats" coords="225,240,295,310"
                      href="categoryForm?categoryId=CATS" shape="RECT" />
                <area alt="Birds" coords="280,180,350,250"
                      href="categoryForm?categoryId=BIRDS" shape="RECT" />
            </map>
            <img height="355" src="images/splash.gif" align="middle"
                 usemap="#estoremap" width="350" />
        </div>
    </div>


<%--    <div id="MainImage">--%>
<%--        <section class="pt-4 pb-5" data-aos="fade-up" id="example-carousel">--%>
<%--            <h3 class="h5 mb-4 font-weight-bold">Carousel</h3>--%>
<%--            <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">--%>
<%--                <ol class="carousel-indicators">--%>
<%--                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>--%>
<%--                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>--%>
<%--                </ol>--%>
<%--                <div class="carousel-inner shadow-sm rounded">--%>
<%--                    <div class="carousel-item active">--%>
<%--                        <img class="d-block w-100" src="https://images.unsplash.com/photo-1475522003475-eb5f96f1f930?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="First slide">--%>
<%--                        <div class="carousel-caption d-none d-md-block">--%>
<%--                            <h5>Mission Beach, San Diego, United States by Matthew Hamilton</h5>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="carousel-item">--%>
<%--                        <img class="d-block w-100" src="https://images.unsplash.com/photo-1521464302861-ce943915d1c3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80" alt="Second slide">--%>
<%--                        <div class="carousel-caption d-none d-md-block">--%>
<%--                            <h5>Golden Gate Bridge, San Francisco, United States by Tim Foster</h5>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>
<%--    </div>--%>

    <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/bottom.jsp"%>