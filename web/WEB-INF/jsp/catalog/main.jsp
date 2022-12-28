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


    <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/bottom.jsp"%>