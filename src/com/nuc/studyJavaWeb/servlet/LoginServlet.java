package com.nuc.studyJavaWeb.servlet;

import com.nuc.studyJavaWeb.entity.User;
import com.nuc.studyJavaWeb.service.UserService;
import com.nuc.studyJavaWeb.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {

    private UserService userService = new UserServiceImpl();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        boolean flag = userService.login(Integer.parseInt(id), password);
        if (flag){
            List<User> users = userService.list();
            request.setAttribute("users", users);
            request.getRequestDispatcher("list.jsp").forward(request,response);
        }else {
            response.sendRedirect("error.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
