package com.nuc.studyJavaWeb.servlet;

import com.nuc.studyJavaWeb.entity.User;
import com.nuc.studyJavaWeb.service.UserService;
import com.nuc.studyJavaWeb.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddServlet extends HttpServlet {

    private UserService userService = new UserServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        String address = request.getParameter("address");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setAge(Integer.parseInt(age));
        user.setAddress(Integer.parseInt(address));
        boolean flag = userService.addUser(user);
        if (flag){
            user.setId(userService.getId());
            request.setAttribute("user", user);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }else {
                out.println("邀请失败，5秒后跳转...");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
