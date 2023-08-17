<%@ page import="com.libmanage.www.enity.Book" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/5/3
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.libmanage.www.enity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Title</title>
    <link href="../nextpages/carousel/css/slider.css" rel="stylesheet" type="text/css" />
    <link href="../nextpages/statics/css/index.css" rel="stylesheet" type="text/css" />
    <script src="../nextpages/carousel/js/slider.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
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
        .dropdown-menu{
            max-width: 20px;
            max-height: 30px;
            position: absolute;
            float: right;
        }
        .af{
            max-width: 20px;
            max-height: 30px;
            position: absolute;
        }
    </style>



</head>
<body>
<div id="main" style="      border: 3px solid #f1c232;
                            width: 50%;
                            position: absolute;
                            height: 99%;
                            z-index:6;">

    <div id="left">
        <%@include file="./htmlpages/ChangeBookListTop.html" %>
    </div>

    <div id="opt_area" style="overflow-y: auto; height: 90%">
        <table id="tablelist" border="1px">
            <thead>
            <tr style="width: 100%">
                <th class="th_p" style="width:10%;">书籍编号</th>
                <th class="th_p" style="width:18%;">书籍名称</th>
                <th class="th_p" style="width:15%;">书籍作者</th>
                <th class="th_p" style="width:12%;">书籍价格</th>
                <th class="th_p" style="width:10%;">书架编号</th>
                <th class="th_p" style="width:15%;">书籍类别</th>
                <th class="th_p" style="width:10%;">书籍存量</th>
            </tr>
            </thead>
            <%
                ArrayList<Book> list4=(ArrayList<Book>)session.getAttribute("list4");
                for(Book book: list4){
            %>
            <tr>


<%--                书籍编号--%>
                <td style="padding: 2px 10px"><%=book.getBooknumber()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                    <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&booknumber=<%=book.getBooknumber()%>&opr=booknumber' class="af" >修改</a>
                            </li>
                        </ul>
                    </div>
                </td>


<%--                书籍名称--%>
                <td style="padding: 2px 10px"><%=book.getBookname()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" style="height: 60px; width: 30px">
                            <li>
                                <a href='ChangeBook.jsp?booknumber=<%=book.getBooknumber()%>&bookname=<%=book.getBookname() %>&opr=bookname' class="af" style="height: 20px">修改</a>
                            </li>
                            <li style="float: right; position: relative; margin-right: 30px">
                                <a href='./BookControl.jsp?opr=del&bookname=<%=book.getBookname()%>'  style="height: 20px; width: 30px">删除</a>
                            </li>
                        </ul>
                    </div>
                </td>


<%--                书籍作者--%>
                <td style="padding: 2px 10px"><%=book.getAuthor()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&author=<%=book.getAuthor() %>&opr=author' class="af">修改</a>
                            </li>
                        </ul>
                    </div>
                </td>



<%--                书籍价格--%>
                <td style="padding: 2px 10px"><%=book.getPrice()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                 <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&price=<%=book.getPrice() %>&opr=price' class="af">修改</a>
                            </li>
                        </ul>
                    </div>
                </td>



<%--                书架编号--%>
                <td style="padding: 2px 10px"><%=book.getPressmark()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&pressmark=<%=book.getPressmark() %>&opr=pressmark' class="af">修改</a>
                            </li>
                        </ul>
                    </div>
                </td>



<%--                书籍类别--%>
                <td style="padding: 2px 10px"><%=book.getSort()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                 <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&sort=<%=book.getSort() %>&opr=sort' class="af">修改</a>
                            </li>
                        </ul>
                    </div>
                </td>



<%--                书籍数量--%>
                <td style="padding: 2px 10px"><%=book.getCount()%>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href='ChangeBook.jsp?bookname=<%=book.getBookname()%>&count=<%=book.getCount() %>&opr=count' class="af">修改</a>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>

            <%}%>

        </table>


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
