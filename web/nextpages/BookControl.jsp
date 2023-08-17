<%--
  Created by IntelliJ IDEA.
  User: 刘静y1
  Date: 2023/5/2
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="com.libmanage.www.dao.BookDao" %>
<%@ page import="com.libmanage.www.enity.Book" %>
<%
    request.setCharacterEncoding("utf-8");
    String opr = request.getParameter("opr");//opr
    BookDao bookDao = new BookDao();


//展示所有书籍
    if(opr.equals("list")){

        List<Book> list4 = bookDao.findAllBook();
        session.setAttribute("list4",list4);
        response.sendRedirect("../FindAllServlet");


//添加书籍
    }else if(opr.equals("add")){
        String booknumber = request.getParameter("booknumber");
        String bookname = request.getParameter("bookname");
        String author = request.getParameter("author");
        String price = request.getParameter("price");
        String pressmark = request.getParameter("pressmark");
        String sort = request.getParameter("sort");
        String count = request.getParameter("count");
        List<Book> list = new ArrayList<Book>();
        list = (List<Book>) bookDao.findBooksByName("bookname");
                if(list.size()==0){//没有此topic主题
                    bookDao.addBook(booknumber,bookname,author,price,pressmark,sort,count);//执行添加
                    List<Book> list4 = bookDao.findAllBook();
                    session.setAttribute("list4",list4);//所有的主题
            %>
                <script type="text/javascript">
                    alert("添加成功，点击确认返回书籍列表！");
                    location.href="BookControl.jsp?opr=list";
                </script>
            <%
            }else{%>
                <script type="text/javascript">
                    alert("当前书籍已存在，请输入不同的书籍！");
                    location.href="AddBook.jsp";
                </script>
            <%}


//修改书籍名称
    }else if(opr.equals("update")){
        String booknumber = request.getParameter("booknumber");
        String bookname = request.getParameter("bookname");
                if(bookDao.changeBookname(bookname,booknumber)){//修改成功
            %>
            <script type="text/javascript">
                alert("修改成功，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=changeList";
            </script>
            <%}else{%>
            <script type="text/javascript">
                alert("修改失败，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=list";
            </script>
            <%}


    }else if (opr.equals("changeList")){
                List<Book> list4 = bookDao.findAllBook();
                session.setAttribute("list4",list4);
                response.sendRedirect("./ChangeBookList.jsp");
    }

//    删除书籍
    else if(opr.equals("del")){//删除主题
        String bookname = request.getParameter("bookname");
        if(bookDao.delBook(bookname)){%>
            <script type="text/javascript">
                alert("删除成功，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=changeList";
            </script>
        <%}else{%>
            <script type="text/javascript">
                alert("删除失败，点击确认返回书籍列表！");
                location.href="topic_control.jsp?opr=list";
            </script>
        <%}






//更改书籍编号
    }else if(opr.equals("updatebooknumber")){
        String booknumber = request.getParameter("booknumber");
        String bookname = request.getParameter("bookname");
                if(bookDao.changeBooknumber(booknumber,bookname)){//修改成功
            %>
                <script type="text/javascript">
                    alert("修改成功，点击确认返回书籍列表！");
                    location.href="BookControl.jsp?opr=changeList";
                </script>
                <%}else{%>
                <script type="text/javascript">
                    alert("修改失败，点击确认返回书籍列表！");
                    location.href="BookControl.jsp?opr=list";
                </script>
    <%}


//更改书籍作者
    }else if(opr.equals("updatebookauthor")){
        String author = request.getParameter("author");
        String bookname = request.getParameter("bookname");
            if(bookDao.changeBookauthor(author,bookname)){//修改成功
                %>
            <script type="text/javascript">
                alert("修改成功，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=changeList";
            </script>
            <%}else{%>
            <script type="text/javascript">
                alert("修改失败，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=list";
            </script>
            <%}

//更改书籍价格
    }else if(opr.equals("updatebookprice")){
        String price = request.getParameter("price");
        String bookname = request.getParameter("bookname");
            if(bookDao.changeBookprice(price,bookname)){//修改成功
            %>
            <script type="text/javascript">
                alert("修改成功，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=changeList";
            </script>
            <%}else{%>
            <script type="text/javascript">
                alert("修改失败，点击确认返回书籍列表！");
                location.href="BookControl.jsp?opr=list";
            </script>
<%}

//更改书架编号
    }else if(opr.equals("updatebookpressmark")){
        String pressmark = request.getParameter("pressmark");
        String bookname = request.getParameter("bookname");
            if(bookDao.changeBookpressmark(pressmark,bookname)){//修改成功
        %>
        <script type="text/javascript">
            alert("修改成功，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=changeList";
        </script>
        <%}else{%>
        <script type="text/javascript">
            alert("修改失败，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=list";
        </script>
<%}

//更改类别
    }else if(opr.equals("updatebooksort")){
        String sort = request.getParameter("sort");
        String bookname = request.getParameter("bookname");
            if(bookDao.changeBooksort(sort,bookname)){//修改成功
        %>
        <script type="text/javascript">
            alert("修改成功，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=changeList";
        </script>
        <%}else{%>
        <script type="text/javascript">
            alert("修改失败，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=list";
        </script>
<%}


//更改数量
    }else if(opr.equals("updatebookcount")){
        String count = request.getParameter("count");
        String bookname = request.getParameter("bookname");
            if(bookDao.changeBookcount(count,bookname)){//修改成功
        %>
        <script type="text/javascript">
            alert("修改成功，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=changeList";
        </script>
        <%}else{%>
        <script type="text/javascript">
            alert("修改失败，点击确认返回书籍列表！");
            location.href="BookControl.jsp?opr=list";
        </script>
<%}

    }
            %>
