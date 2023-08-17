<%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/4/30
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.libmanage.www.enity.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.libmanage.www.tools.Pages" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1, user-scalable=yes">
    <title>Title</title>
    <link href="./nextpages/carousel/css/slider.css" rel="stylesheet" type="text/css" />
    <link href="./nextpages/statics/css/index.css" rel="stylesheet" type="text/css" />
    <script src="./nextpages/carousel/js/slider.js" type="text/javascript"></script>
    <STYLE type="text/css">
        html{
            display: flex;
            /*overflow: hidden;*/
            height: 100%;
            width: 100%;
            margin:0 0 0 0;
            padding:0 0 0 0;
            border: 0;
        }
        body{
            display: block;
            height: 100%;
            width: 100%;
            margin:0 0 0 0;
            padding:0 0 0 0;
            border: 0;
        }

        #tablelist{
            margin-top: 20px;
            margin-left: 20px;
            table-layout : fixed;
            /*overflow-y: auto;*/
            border-collapse: collapse;
            border: 3px solid #f1c232;
            max-height: 80%;
            /*width: 100%;*/
        }

        .th_p{
            text-align:center;
            vertical-align:middle;
            border: 3px solid #f1c232;
        }

        .td_p{
            text-align:center;
            vertical-align:middle;
        }

    </STYLE>
</head>
<body>

    <div id="managelist" style="width: 50%;height: 99%; position: absolute; border: 3px solid #f1c232; z-index:6;">
        <div id="left">
            <%@include file="add/left.html" %>
        </div>
        <div style="overflow-y: auto;height: 90%">
            <table border="1px" id="tablelist">
                <thead>
                <tr>
                    <th class="th_p" style="width:10%;">书籍编号</th>
                    <th class="th_p" style="width:30%;">书籍名称</th>
                    <th class="th_p" style="width:15%;">书籍作者</th>
                    <th class="th_p" style="width:10%;">书籍价格</th>
                    <th class="th_p" style="width:10%;">书架编号</th>
                    <th class="th_p" style="width:15%;">书籍类别</th>
                    <th class="th_p" style="width:10%;">书籍存量</th>
                </tr>
                </thead>


                <tbody >
                <%
                    Pages pages = (Pages) request.getAttribute("pages");
                    List<Book> newList = pages.getNewsList();
                    for (Book books:newList){
                %>
                <tr>
<%--                    style="padding: 2px 10px; width:10%;"--%>
                    <td class="td_p"><%=books.getBooknumber()%></td>
                    <td class="td_p"><%=books.getBookname()%></td>
                    <td class="td_p"><%=books.getAuthor()%></td>
                    <td class="td_p"><%=books.getPrice()%></td>
                    <td class="td_p"><%=books.getPressmark()%></td>
                    <td class="td_p"><%=books.getSort()%></td>
                    <td class="td_p"><%=books.getCount()%></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>



<div id="slider">
    <%@include file="./carousel/slider.html" %>
</div>
</body>
</html>
