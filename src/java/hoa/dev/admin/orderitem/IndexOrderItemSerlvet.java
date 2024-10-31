/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev.admin.orderitem;

import hoa.dev.admin.BaseAdminServlet;
import hoa.dev.data.dao.DatabaseDao;
import hoa.dev.data.dao.OrderDao;
import hoa.dev.data.dao.OrderItemDao;
import hoa.dev.data.model.Order;
import hoa.dev.data.model.OrderItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class IndexOrderItemSerlvet extends BaseAdminServlet {

   @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    int orderId = Integer.parseInt(request.getParameter("orderId"));
    OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
    Order order = orderDao.find(orderId);

    OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
    List<OrderItem> orderItemList = orderItemDao.findByOder(orderId);
    
    // In ra thông tin orderItemList
    for (OrderItem item : orderItemList) {
        System.out.println("OrderItem ID: " + item.getId() + ", Product ID: " + item.getProductId());
    }

    request.setAttribute("order", order);
    request.setAttribute("orderItemList", orderItemList);
    request.getRequestDispatcher("admin/orderitem/index.jsp").include(request, response);
}


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        Order order = orderDao.find(orderId);

        String status = request.getParameter("status");
        order.setStatus(status);

        orderDao.update(order);
        response.sendRedirect("IndexOrderServlet");

    }
}
