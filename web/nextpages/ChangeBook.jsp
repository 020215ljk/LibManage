<%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/5/2
  Time: 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String booknumber = request.getParameter("booknumber");
    String bookname = request.getParameter("bookname");
    String opr = request.getParameter("opr");


//    修改书籍编号
        if(opr.equals("booknumber")){
            %>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebooknumber" method="post" name="form1">
                <p>
                    <input name="booknumber" type="hidden" class="opt_input" value="" id="booknumber"/>
                    <input name="bookname" type="hidden" value="<%=bookname%>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("booknumber").value = a;
                        setTimeout("document.form1.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
       <% }


//        修改书籍名称
        else if (opr.equals("bookname")){
       %>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=update" method="post" name="form2">
                <p>
                    <input name="bookname" type="hidden" class="opt_input" value="" id="bookname"/>
                    <input name="booknumber" type="hidden" value="<%=booknumber %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("bookname").value = a;
                        setTimeout("document.form2.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
<%


//          修改书籍作者
       }else if (opr.equals("author")){
%>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebookauthor" method="post" onsubmit="return check()" name="form3">
                <p>
                    <input name="author" type="hidden" class="opt_input" value="" id="author"/>
                    <input name="bookname" type="hidden" value="<%=bookname %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("author").value = a;
                        setTimeout("document.form3.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
<%



//           修改书籍价格
       }else if (opr.equals("price")){
%>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebookprice" method="post" onsubmit="return check()" name="form4">
                <p>
                    <input name="price" type="hidden" class="opt_input" value="" id="price"/>
                    <input name="bookname" type="hidden" value="<%=bookname %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("price").value = a;
                        setTimeout("document.form4.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
<%



//        修改书架编号
        }else if (opr.equals("pressmark")){
%>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebookpressmark" method="post" onsubmit="return check()" name="form5">
                <p>
                    <input name="pressmark" type="hidden" class="opt_input" value="" id="pressmark"/>
                    <input name="bookname" type="hidden" value="<%=bookname %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("pressmark").value = a;
                        setTimeout("document.form5.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
<%



//            修改书籍类别
        }else if (opr.equals("sort")){
%>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebooksort" method="post" onsubmit="return check()" name="form6">
                <p>
                    <input name="sort" type="hidden" class="opt_input" value="" id="sort"/>
                    <input name="bookname" type="hidden" value="<%=bookname %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("sort").value = a;
                        setTimeout("document.form6.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>
<%



//    修改书籍数量
        }else if (opr.equals("count")){
%>
        <div id="opt_area">
            <form action="./BookControl.jsp?opr=updatebookcount" method="post" onsubmit="return check()" name="form7">
                <p>
                    <input name="count" type="hidden" class="opt_input" value="" id="count"/>
                    <input name="bookname" type="hidden" value="<%=bookname %>">
                </p>
            </form>
            <script>
                window.onload = function() {
                    var a= prompt("请输入要修改的新内容：");
                    if (a!=null){
                        document.getElementById("count").value = a;
                        setTimeout("document.form7.submit()",500);
                    }else{
                        alert("修改失败，点击返回")
                        location.href="BookControl.jsp?opr=changeList";
                    }
                };
            </script>
        </div>



<%}%>




