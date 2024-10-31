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
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class CreateUserServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        request.getRequestDispatcher("admin/user/create.jsp").include(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String RepeatPass = request.getParameter("RepeatPass");
        String role = request.getParameter("role");
        
        HttpSession session = request.getSession();
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(email);
        
        if(email.isEmpty() || password.isEmpty() || RepeatPass.isEmpty() || role.isEmpty()){
            session.setAttribute("error","Vui long nhap day du thong tin");
            request.getRequestDispatcher("admin/user/create.jsp").include(request, response);
        }else if(user!=null){
            session.setAttribute("error","Email da ton tai");
            request.getRequestDispatcher("admin/user/create.jsp").include(request, response);
            
        }else if(!password.equals(RepeatPass)){
            session.setAttribute("error", "Password khong khop");
            request.getRequestDispatcher("admin/user/create.jsp").include(request, response);
        }else{
            user = new User (email,password,role);
            userDao.insert(user);
            response.sendRedirect("IndexUserServlet");
        }
    }

}