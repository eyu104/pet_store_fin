<%@ include file="../common/top.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="mp nav-search">
    <div class="w mp">
        <a href="#" class="mp link logo">MyPetStore</a>
        <div class="search-content">
            <form action="search" method="post">
                <input type="text" name="keyword" id="keyword" class="search-input mp" placeholder="请输入商品名称" />
                <input type="submit" class="btn search-btn mp" value="搜索">
            </form>
            <div id="productAutoComplete" class="mq">
                <ul id="productAutoList" class="mq">
                    <li class="productAutoItem"></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<%@ include file="../common/bottom.jsp"%>