/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hoa.dev.admin;

import hoa.dev.data.dao.Database;
import hoa.dev.data.dao.DatabaseDao;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;

/**
 *
 * @author ASUS
 */
public class BaseAdminServlet extends HttpServlet
{
    @Override
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
        DatabaseDao.init(new Database());
    }
    
}