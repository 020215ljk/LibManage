<%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/4/30
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*,com.libmanage.www.servlet.*" pageEncoding="utf-8"%>
<%@ page import="com.libmanage.www.enity.Manager" %>

<!-- 本处使用重定向和请求转发都是可以的，path代表Servlet的地址 -->

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1, user-scalable=yes">

    <title>图书管理系统</title>


    <script language="javascript">
        function check(){
            var login_username = document.getElementById("id_username");
            var login_password = document.getElementById("id_upwd");
            if(login_username.value == "" || login_username == null){
                alert("用户名不能为空！请重新填入！");
                document.getElementById("namerror").innerHTML="账号不能为空";
                // login_username.focus();
                return false;
            }else if(login_password.value == "" || login_password == null){
                alert("密码不能为空！请重新填入！");
                document.getElementById("upwderror").innerHTML="密码不能为空";
                // login_password.focus();
                return false;
            }
            return true;
        }

        function jqueryCheck(){
            const username = $("#id_username").val();
            const upwd = $("#id_upwd").val();


            if(username=="" || username==null){
                $("#namerror").html("账号不能为空");
                $("#id_username").focus();
                return false;
            }
            if (upwd=="" || upwd==null){
                $("#upwderror").html("密码不能为空");
                $("#id_upwd").focus()
                return false;
            }
            alert("校验成功")
            return true;
        }

        function focusOnLogin(){
            var login_username = document.getElementById("username");
            login_username.focus();
        }
    </script>


    <link href="./nextpages/carousel/css/slider.css" rel="stylesheet" type="text/css" />
    <link href="./nextpages/statics/css/index.css" rel="stylesheet" type="text/css" />
    <script src="./nextpages/carousel/js/slider.js" type="text/javascript"></script>
</head>






<body>
<div id="login" style="z-index:6;">
    <div id="logo" style="width: 100%; height: auto">
        <%@include file="./nextpages/htmlpages/logo.html" %>
    </div>
    <div>
        <form action="ManagerServlet" method="post" onsubmit="return check()">
            <div class="account">
                <input type="text" id="id_username" name="username" value="" class="login_input" placeholder="请输入您的账号" />
                <label id="namerror" style="color: red"> </label>
            </div>
            <div class="password">
                <input type="password" id="id_upwd" name="password" value="" class="login_input" placeholder="请输入您的密码" />
                <label id="upwderror" style="color: red"> </label>
            </div>
            <div class="suba">
                <div class="loginbot">
                    <input type="submit" class="login_sub" value="登录" id="log" />
                </div>
                <div class="register">
                    <input type="button" value="注册"  class="login_sub" id="reg"/>
<%--                           onclick="javascript:window.location.href='register.jsp'"/>--%>
                    <label id="error" style="color: red"> </label>
                </div>
            </div>

        </form>
    </div>
    <div style="position: absolute; bottom: 20px;">
        <div style="
                    padding-top: 100px;
                    width: 100%;
    ">
            <div>
                <div style="height: 20px; float: left; width: 50%; ">
                    <div style="padding-left: 70px; height: 20px">
                        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=41170202000496"
                            style="text-decoration: none; height: 20px"
                        >
                            <img src="qwert.png" style="height: 20px; width: 20px;"/>
                            <%--margin: 0px 0px 0px 5px; color:#939393;--%>
                            <span style="color: darkgray">
                            豫公网安备 41170202000496号
                            </span>
                        </a>
                    </div>
                </div>
                <div style="height: 20px; float: right; width: 50%;">
                    <div style="height: 20px">
                        <a href="https://beian.miit.gov.cn/#/Integrated/index"
                           style="text-decoration: none; height: 20px;">
                        <span style="padding-left: 100px; color: darkgray;">
                            豫ICP备2023010345号
                        </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 20px; text-align: center; padding-top: 30px; color: darkgray">
            联系方式：572697561@qq.com
        </div>
    </div>

</div>

<div id="slider">
    <%@include file="./nextpages/carousel/slider.html" %>
</div>

</body>
</html>
