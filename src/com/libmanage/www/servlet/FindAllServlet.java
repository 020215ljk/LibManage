package com.libmanage.www.servlet;

import com.libmanage.www.dao.BookDao;
import com.libmanage.www.enity.Book;
import com.libmanage.www.tools.Pages;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FindAllServlet", value = "/FindAllServlet")
public class FindAllServlet extends HttpServlet {
    Book book = new Book();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Pages pages = new Pages();
        List<Book> list = new BookDao().findAllBook();
        HttpSession session = request.getSession();
        session.setAttribute("allBook",list);
        for (Book booklist:list){
            System.out.println(booklist);
        }
        pages.setNewsList(list);
        request.setAttribute("pages",pages);
        request.getRequestDispatcher("nextpages/ManagerPage.jsp").forward(request,response);
    }
}
