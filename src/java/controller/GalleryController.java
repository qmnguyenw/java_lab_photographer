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
import dao.CountDAO;
import dao.PhotoDAO;
import entity.Gallery;
import entity.Image;
import java.util.List;

/**
 *
 * @author Admin
 */
public class GalleryController extends HttpServlet {

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
            String galleryID = request.getParameter("galleryID");
            String imgID = request.getParameter("imgID");
            boolean invalid = true;
            boolean indexValid = true;
            int gallery = 0;
            gallery = Integer.parseInt(galleryID);
            int pageSize = 8;

            //count total result 
            int totalRecord = photoDao.countImage(gallery);
            int maxPage = totalRecord / pageSize;
            if ((totalRecord % pageSize) != 0) {
                maxPage++;
            }
            int imageID = 0;
            String pageIndex = request.getParameter("index");
            int index = 0;
            if (pageIndex != null) {
                index = Integer.parseInt(pageIndex);
            } else {
                index = 1;
            } 
            //count visit
            CountDAO countingDAO = new CountDAO();
            
            //get list image with paging 
            List<Image> imagelList = photoDao.getListImageWithPaging(gallery, index, pageSize);
            
            Image image;
            //check image id valid
            if (imgID != null) {
                imageID = Integer.parseInt(imgID);
                image = photoDao.getImageID(imageID, gallery);
            } else {
                // set default image
                image = imagelList.get(0);
            }


            request.setAttribute("listImage", imagelList);
            
            // get chosen image from database
            request.setAttribute("top1Gallery", image);

            request.setAttribute("index", index);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("galleryID", gallery);
            request.setAttribute("totalRecord", totalRecord);
            request.setAttribute("gallery", photoDao.getGalleryByID(gallery));
            //get top 3 gallery
            request.setAttribute("top3", photoDao.getTop3Gallery());
            //get contact infor
            request.setAttribute("contact", photoDao.getContact());
            request.setAttribute("active", galleryID);
            //get visit number
            request.setAttribute("visit", countingDAO.getVisit());
            request.getRequestDispatcher("gallery.jsp").forward(request, response);
        } catch (Exception ex) {
            
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
