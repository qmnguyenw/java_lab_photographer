/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Contact;
import entity.Gallery;
import entity.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class PhotoDAO {

    public PhotoDAO() {
    }
    
    // get latest news
    public List<Gallery> getTop3Gallery() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Gallery> listGallery = new ArrayList<>();
        try {
            String query = "SELECT TOP 3 * FROM gallery";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            while (rs.next()) {
                Gallery gallery = new Gallery();
                gallery.setID(rs.getInt("ID"));
                gallery.setTitle(rs.getString("title"));
                gallery.setDescription(rs.getString("description"));
                gallery.setName(rs.getString("name"));
                listGallery.add(gallery);
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return listGallery;
    }
    
    // get gallery by id
    public Gallery getGalleryByID(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 * FROM gallery WHERE ID = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            while (rs.next()) {
                Gallery gallery = new Gallery();
                gallery.setID(rs.getInt("ID"));
                gallery.setTitle(rs.getString("title"));
                gallery.setDescription(rs.getString("description"));
                gallery.setName(rs.getString("name"));
                return gallery;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return null;
    }

    // get contact information
    public Contact getContact() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Gallery> listGallery = new ArrayList<>();
        try {
            String query = "SELECT TOP 1 * FROM contact";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            while (rs.next()) {
                Contact contact = new Contact();
                contact.setTelephone(rs.getString("telephone"));
                contact.setEmail(rs.getString("email"));
                contact.setFace_url(rs.getString("face_url"));
                contact.setTwitter_url(rs.getString("twitter_url"));
                contact.setGoogle_url(rs.getString("google_url"));
                contact.setAbout(rs.getString("about"));
                contact.setAddress(rs.getString("address"));
                contact.setCity(rs.getString("city"));
                contact.setCountry(rs.getString("country"));
                contact.setMap_url(rs.getString("map_url"));
                contact.setImage_main(rs.getString("image_main"));
                contact.setIcon_face(rs.getString("icon_face"));
                contact.setIcon_twitter(rs.getString("icon_twitter"));
                contact.setIcon_google(rs.getString("icon_google"));
                return contact;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return null;
    }
    
    // count number of gallery
    public int count() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT count(*) FROM gallery";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            int cout = 0;
            while (rs.next()) {
                cout = rs.getInt(1);
            }
            return cout;
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
    }
    
    
    // get list gallery with paging
    public List<Gallery> getListGalleryWithPaging(int pageIndex, int pageSize) throws Exception {
       DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Gallery> list = new ArrayList<>();
//        int size = count();
        try {
            String query = "SELECT * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn , * FROM  gallery )"
                    + "AS b WHERE rn BETWEEN ((?*?) - ?) AND (?*?)";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, pageSize);
            pr.setInt(2, pageIndex);
            pr.setInt(3, pageSize - 1);
            pr.setInt(4, pageSize);
            pr.setInt(5, pageIndex);
            rs = pr.executeQuery();
            while (rs.next()) {
                Gallery gallery = new Gallery();
                gallery.setID(rs.getInt("ID"));
                gallery.setTitle(rs.getString("title"));
                gallery.setDescription(rs.getString("description"));
                gallery.setName(rs.getString("name"));
                list.add(gallery);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return list;
    }
    
    // count number image of gallery
    public int countImage(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT count(*) FROM image WHERE gallery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            int cout = 0;
            while (rs.next()) {
                cout = rs.getInt(1);
            }
            return cout;
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
    }

    //get the path of image by ID
    public String getImageByGalleryID(int id) throws Exception {
       DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 image_url FROM image\n"
                    + "WHERE gallery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            while (rs.next()) {
                return db.getImgDir() + rs.getString(1);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return null;
    }
    
    // get list gallery with paging
    public List<Image> getListImageWithPaging(int galleryID, int pageIndex, int pageSize) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Image> list = new ArrayList<>();
        int size = countImage(galleryID);
        try {
            String query = "SELECT * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn , * FROM image WHERE gallery_id = ?) "
                    + "AS b WHERE rn BETWEEN ((?*?) - ?) AND (?*?)";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, galleryID);
            pr.setInt(2, pageSize);
            pr.setInt(3, pageIndex);
            pr.setInt(4, pageSize - 1);
            pr.setInt(5, pageSize);
            pr.setInt(6, pageIndex);
            rs = pr.executeQuery();
            while (rs.next()) {
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGallery_id(rs.getInt("gallery_id"));
                image.setImage_url(rs.getString("image_url"));
                list.add(image);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return list;
    }
    
    // get image by id
    public Image getImageID(int id, int galleryId) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT * FROM image WHERE id = ? AND gallery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            pr.setInt(2, galleryId);
            rs = pr.executeQuery();
            while (rs.next()) {
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGallery_id(rs.getInt("gallery_id"));
                image.setImage_url(rs.getString("image_url"));
                return image;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return null;
    }
    
    // get top 1 imgae of gallery
    public Image getTop1ImageGallery(int galleryID) throws Exception {
       DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 * FROM image WHERE gallery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, galleryID);
            rs = pr.executeQuery();
            while (rs.next()) {
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGallery_id(rs.getInt("gallery_id"));
                image.setImage_url(rs.getString("image_url"));
                return image;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(conn, pr, rs);
        }
        return null;
    }
}
