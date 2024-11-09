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
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            response.sendRedirect("HomeServlet");

        } else {
            request.getRequestDispatcher("login.jsp").include(request, response);

        }
    }
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    HttpSession session = request.getSession();

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    UserDao userDao = DatabaseDao.getInstance().getUserDao();

    // Kiểm tra xem tài khoản tồn tại
    User user = userDao.find(email);
    if (user == null) {
        // Nếu không tìm thấy tài khoản
        session.setAttribute("error", "Tài khoản không tồn tại.");
        response.sendRedirect("LoginServlet");
    } else if (!user.getPassword().equals(password)) {
        // Nếu sai mật khẩu
        session.setAttribute("error", "Sai mật khẩu.");
        response.sendRedirect("LoginServlet");
    } else {
        // Nếu đăng nhập thành công
        session.setAttribute("user", user);
        session.removeAttribute("error"); // Xóa lỗi nếu có
        if ("admin".equals(user.getRole())) {
            response.sendRedirect("DashBoardServlet");
        } else {
            response.sendRedirect("HomeServlet");
        }
    }
}


}
