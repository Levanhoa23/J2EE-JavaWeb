/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoa.dev;

import hoa.dev.data.dao.DatabaseDao;
import hoa.dev.data.dao.OrderDao;
import hoa.dev.data.dao.OrderItemDao;
import hoa.dev.data.model.Order;
import hoa.dev.data.model.OrderItem;
import hoa.dev.data.model.User;
import hoa.dev.util.StringHelper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;

public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     HttpSession session =request.getSession();
     User user = (User) session .getAttribute("user");
     
     if(user == null){
         response.sendRedirect("LoginServlet");
     }else{
         proccessCheckout(request,user);
         response.sendRedirect("CartServlet");
     }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    private void proccessCheckout(HttpServletRequest request, User user) {
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        String code = StringHelper.randomString(10);
        
        Order order = new Order(code,"pending",user.getId());
        orderDao.insert(order);
        
        order = orderDao.findByCode(code);
        HttpSession  session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");
        
        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
        
        if(cart != null){
            for(OrderItem   orderItem:cart){
                orderItem.setOrderId(order.getId());
                orderItemDao.insert(orderItem);
            }
        }
        session.setAttribute("message", "Checkout Success");
        session.removeAttribute("cart");
    }

}