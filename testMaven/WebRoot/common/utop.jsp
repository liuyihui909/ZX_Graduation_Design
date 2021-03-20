<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<div class="width100" style="height: 25px;background: #f0f0f0;">
    <div class="width1200 center_yh font14 c_66" style="height: 25px;line-height: 25px;">
        <font class="left_yh">欢迎来到麻豆汽车商城 ！</font>
        <div class="right_yh" id="fast_jump">
            <c:if test="${userId!=null}">
                <a href="#">欢迎您：${username}</a>
                <b></b>
                <a href="${ctx}/login/uTui">退出</a>
                <b></b>
                <a href="${ctx}/car/findBySql">我的购物车</a>
                <b></b>
            </c:if>
            <c:if test="${userId==null}">
                <a href="${ctx}/login/uLogin">登录</a>
                <b></b>
                <a href="${ctx}/login/res">注册</a>
                <b></b>
            </c:if>
            <a href="${ctx}/user/view">个人中心</a>
        </div>
    </div>
</div>
<div class="width100 hidden_yh">
    <div class="width1200 center_yh hidden_yh">
        <a href="#" class="block_yh left_yh">
<%--            <img src="${ctx}/resource/images/logo.png" alt="" style="height: 70px">--%>
        </a>
        <div class="right_yh" style="height:28px;width:316px;border:2px solid #dd4545;margin-top:-40px;">
            <form action="${ctx}/item/shopList" method="post">
                <input type="text" placeholder="关键词查询" class="search" name="condition" value="${condition}">
                <input type="submit" class="btnSearh" value="搜索">
            </form>
        </div>
    </div>
</div>


<div class="width100 hidden_yh">
    <div class="width1200 center_yh hidden_yh">



            <img src="${ctx}/resource/images/logo.png" alt="" width="440px" style="height: 120px; float:left;margin-top: 60px" >
        </a>
            <form action="${ctx}/item/findBySql" id="listform" method="post" >
                <div  class="button border-main icon-search" style="float:right;solid:1px;" >
                    <ul class="search" style="padding-left: 10px;">

                        <li>

                            <input type="text" placeholder="请输入商品名称" name="name" class="input" value="${obj.name}"
                                   style="width: 250px;line-height: 17px;display: inline-block" value="搜索"/>
                            <a href="javascript:void(0)" style="background-color: black;float: right" onclick="changeSearch()" class="button border-main icon-search"><font class="back font15">搜索</font></a>
                        </li>
                    </ul>
                </div>
            </form>
            <table class="table table-hover text-center">

                <c:forEach items="${pagers.datas}" var="data" varStatus="l">
                    <tr>
                        <td>${data.name}</td>
                        <td><img src="${data.url1}" alt="" style="width: 100px;height: 100px;"></td>
                        <td>${data.price}</td>
                        <td>${data.yiji.name}</td>
                        <td>${data.erji.name}</td>
                        <td>

                        </td>

                    </tr>
                </c:forEach>

            </table>
        </div>

        </div>
    </div>




<script>
    function changeSearch(){
        $("#listform").submit();
    }
</script>