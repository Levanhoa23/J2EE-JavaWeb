/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev.admin.user;

import hoa.dev.BaseServlet;
import hoa.dev.data.dao.DatabaseDao;
import hoa.dev.data.dao.UserDao;
import hoa.dev.data.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditUserServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDao userDao  = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(userId);
        
        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int userId = Integer.parseInt(request.getParameter("user"));
        UserDao userDao  = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(userId);
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        user.setEmail(email);
        user.setPassword(password);
        
        userDao.update(user);
        response.sendRedirect("IndexUserServlet");
        
            }

}