package com.libmanage.www.servlet;

import com.libmanage.www.dao.ManagerDao;
import com.libmanage.www.enity.Manager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ManagerServlet",
        loadOnStartup = 1,
        value = "/ManagerServlet",
        initParams = {@WebInitParam(name="name1",value ="value1")})
public class ManagerServlet extends HttpServlet{

    @Override
    public void init() throws ServletException{
        System.out.println("开始创建ManagerServlet");
        super.init();
    }

    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ManagerServlet的service()执行");
        super.service(req, resp);
    }

    @Override
    public void destroy() {
        System.out.println("ManagerServlet销毁");
        super.destroy();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Manager manager = new ManagerDao().findManager(username,password);
        if (manager!=null){
            HttpSession session = request.getSession();
            session.setAttribute("manager",manager);
            request.getRequestDispatcher("FindAllServlet").forward(request,response);
        }else {
            response.setContentType("text/html;charset=utf-8");
            PrintWriter writer = response.getWriter();
            writer.println("<script language='javascript'> "+
                    "alert('账号密码错误，请重新登录');"+
                    "window.location.href='index.jsp';"+
                    "</script>");
            writer.flush();
            writer.close();
        }
        destroy();
    }

}
