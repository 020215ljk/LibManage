<%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/5/2
  Time: 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Title</title>
    <link href="../nextpages/carousel/css/slider.css" rel="stylesheet" type="text/css" />
    <link href="../nextpages/statics/css/index.css" rel="stylesheet" type="text/css" />
    <script src="../nextpages/carousel/js/slider.js" type="text/javascript"></script>



    <script type="text/javascript">
        function check() {
            var bookname = document.getElementById("bookname");

            if (bookname.value == "") {
                alert("请输入书籍名称！！");
                bookname.focus();
                return false;
            }
            return true;
        }
    </script>


    <style type="text/css">
        .login_input{
            margin-top: 15px;
        }
        .login_sub{
            margin-top: 15px;
        }

    </style>
</head>




<body>
<div id="opt_area" style="      border: 3px solid #f1c232;
                                width: 50%;
                                position: absolute;
                                height: 99%;
                                z-index:6;">

    <div id="left">
        <%@include file="./htmlpages/ChangeBookListTop.html" %>
    </div>

    <h1 id="opt_type"> 添加书籍： </h1>


    <div id="input_sub">
        <form action="./BookControl.jsp?opr=add" method="post" onsubmit="return check()" style="text-align: center">
            <p>
<%-- 书籍编号 --%>
                <input name="booknumber" type="number" class="login_input" id="booknumber" placeholder="请输入书籍编号"/>
            </p>
            <p>
<%--书籍名称--%>
                <input name="bookname" type="text" class="login_input" id="bookname" placeholder="请输入书籍名称"/>
            </p>
            <p>
<%--书籍作者 --%>
                <input name="author" type="text" class="login_input" id="author" placeholder="请输入书籍作者"/>
            </p>
            <p>
<%--书籍价格 --%>
                <input name="price" type="text" class="login_input" id="price" placeholder="请输入书籍价格"/>
            </p>
            <p>
<%--书架编号--%>
                <input name="pressmark" type="text" class="login_input" id="pressmark" placeholder="请输入书架编号"/>
            </p>
            <p>
<%--书籍类别 --%>
                <input name="sort" type="text" class="login_input" id="sort" placeholder="请输入书籍类别"/>
            </p>
            <p>
<%--书籍存量 --%>
                <input name="count" type="text" class="login_input" id="count" placeholder="请输入书籍存量"/>
            </p>
            <div class="suba" style="max-width: 350px">
                <input name="action" type="hidden" value="addtopic"/>
                <input type="submit" value="提交" class="login_sub" style="float: left" />
                <input type="reset" value="重置" class="login_sub" style="float: right" />
            </div>

        </form>
    </div>

</div>



<div id="slider">
    <ul class="slieder-item-container">
        <li><a href="#"><img src="../nextpages/carousel/images/1.png" /></a></li>
        <li><a href="#"><img src="../nextpages/carousel/images/2.png" /></a></li>
        <li><a href="#"><img src="../nextpages/carousel/images/3.png" /></a></li>
        <li><a href="#"><img src="../nextpages/carousel/images/4.png" /></a></li>
        <li><a href="#"><img src="../nextpages/carousel/images/5.png" /></a></li>
    </ul>
    <div class="arrow-container">
        <span class="left-arrow"><</span>
        <span class="right-arrow">></span>
    </div>
    <div class="indicator-container">
        <span class="indicator active"></span>
        <span class="indicator"></span>
        <span class="indicator"></span>
        <span class="indicator"></span>
        <span class="indicator"></span>
    </div>
</div>
</body>
</html>
