/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import context.DBContext;
import dao.CountDAO;
import dao.PhotoDAO;
import entity.Gallery;
import java.util.List;

/**
 *
 * @author Admin
 */
public class HomeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PhotoDAO photoDao = new PhotoDAO();
            int pageSize = 3;
            String pageIndex = request.getParameter("index");
            int index = 0;
            //check index page
            if (pageIndex != null) {
                index = Integer.parseInt(pageIndex);
            } else {
                index = 1;
            }
            //count total result 
            int totalRecord = photoDao.count();
            int maxPage = totalRecord / pageSize;
            if ((totalRecord % pageSize) != 0) {
                maxPage++;
            }
            //count visit
            CountDAO countDAO = new CountDAO();
            //get list gallery with paging 
            List<Gallery> digitalList = photoDao.getListGalleryWithPaging(index, pageSize);
            request.setAttribute("listGallery", digitalList);
            request.setAttribute("index", index);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("totalRecord", totalRecord);
            //get top 3 gallery
            request.setAttribute("top3", photoDao.getTop3Gallery());
            //get contact infor
            request.setAttribute("contact", photoDao.getContact());
            request.setAttribute("active", "0");
            //get visit number
            request.setAttribute("visit", countDAO.getVisit());
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", ex);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
