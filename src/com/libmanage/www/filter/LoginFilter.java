package com.libmanage.www.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "LoginFilter", value = "/LoginFilter")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("LoginFilter测试");
        System.out.println("LoginFiler初始化");
    }

    public void destroy() {
        System.out.println("LoginFiler销毁");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        if (session.getAttribute("manager") == null){
//            resp.sendRedirect("../index.jsp");
            response.setContentType("text/html;charset=utf-8");
            PrintWriter writer = response.getWriter();
            writer.println("<script language='javascript'> "+
                    "alert('请输如账号密码');"+
                    "window.location.href='../index.jsp';"+
                    "</script>");
            writer.flush();
            writer.close();
        }else {
            chain.doFilter(request, response);
        }
    }
}
