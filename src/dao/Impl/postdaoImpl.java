package dao.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.postdao;
import entity.book;
import entity.post;

public class postdaoImpl implements postdao{
    private final String URL = "jdbc:mysql://localhost:3306/lib";
    private final String USERNAME = "root";
    private final String PWD = "123456";

    @Override
    public boolean addPost(post post) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            int Pno = post.getPno();
            String sql = "insert into lib.post values(?,?,?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Pno);
            pstmt.setInt(2, post.getAno());
            pstmt.setString(3, post.getPday());
            pstmt.setString(4, post.getPcontent());
            pstmt.setString(5,post.getPtitle());
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally{
            try {
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean deletePost(int Pno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "delete from lib.post where Ano =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Pno);
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally{
            try {
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean isExist(int Pno) {
        return queryPost(Pno) != null;
    }

    @Override
    public post queryPost(int Pno) {
        post post = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.post Where Pno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Pno);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int PNo = rs.getInt("Pno");
                int ANo = rs.getInt("Ano");
                String Pday = rs.getString("Pday");
                String Pcontent = rs.getString("Pcontent");
                String Ptitle = rs.getString("Ptitle");
                post = new post(PNo,ANo,Pday,Pcontent,Ptitle);
            }
            return post;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally{
            try {
                if(rs != null)	rs.close();
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public List<post> queryAllpost() {
        List<post> posts = new ArrayList<>();
        post post = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.post ";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int PNo = rs.getInt("Pno");
                int ANo = rs.getInt("Ano");
                String Pday = rs.getString("Pday");
                String Pcontent = rs.getString("Pcontent");
                String Ptitle = rs.getString("Ptitle");
                post = new post(PNo,ANo,Pday,Pcontent,Ptitle);
                posts.add(post);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally{
            try {
                if(rs != null)	rs.close();
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean updataPostcontent(int Pno, String Pcontent) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.post set Pcontent = ? where Pno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, Pcontent);
            pstmt.setInt(2, Pno);
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally{
            try {
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public List<post> queryPostnew() {
        List<post> posts = new ArrayList<>();
        post post = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "SELECT * FROM lib.post order by Pday desc limit 3;";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int PNo = rs.getInt("Pno");
                int ANo = rs.getInt("Ano");
                String Pday = rs.getString("Pday");
                String Pcontent = rs.getString("Pcontent");
                String Ptitle = rs.getString("Ptitle");
                post = new post(PNo,ANo,Pday,Pcontent,Ptitle);
                posts.add(post);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally{
            try {
                if(rs != null)	rs.close();
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
