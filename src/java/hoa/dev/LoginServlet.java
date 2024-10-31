/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev;

import hoa.dev.data.dao.DatabaseDao;
import hoa.dev.data.dao.UserDao;
import hoa.dev.data.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        request.getRequestDispatcher("login.jsp").include(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        User user = userDao.find(email,password);
        
        if(user == null){
            session.setAttribute("error", "Login that bai");
            response.sendRedirect("LoginSerlvet");
            
        }else{
            session.setAttribute("user", user);
            if(user.getRole().equals("admin")){
                response.sendRedirect("DashBoardServlet");
                
            }else{
                response.sendRedirect("HomeServlet");
            }
        }
    }

}

