/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev.admin.product;

import hoa.dev.BaseServlet;
import hoa.dev.data.dao.DatabaseDao;
import hoa.dev.data.dao.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteProductServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int productId = Integer.parseInt(request.getParameter("productId"));
       ProductDao productDao = DatabaseDao.getInstance().getProductDao();
       productDao.delete(productId);
       
       response.sendRedirect("IndexProductServlet");
    }

}
