/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev.admin.category;

import hoa.dev.BaseServlet;
import hoa.dev.data.dao.CategoryDao;
import hoa.dev.data.dao.DatabaseDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteCategoryServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int categoryId = Integer.parseInt(request.getParameter("categoryId"));
       CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
       categoryDao.delete(categoryId);
       
       response.sendRedirect("IndexCategoryServlet");
    }

}
