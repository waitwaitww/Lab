package dao.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.bookdao;
import entity.book;

public class bookdaoImpl implements bookdao{
    private final String URL = "jdbc:mysql://localhost:3306/lib";
    private final String USERNAME = "root";
    private final String PWD = "123456";

    @Override
    public boolean addBook(book b) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            int Bno = b.getBno();
            String Bookname = b.getBname();
            String sql = "insert into lib.book values(?,?,?,?,?,?,?,?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
            pstmt.setString(2, Bookname);
            pstmt.setString(3, b.getBcategory());
            pstmt.setString(4, b.getBauthor());
            pstmt.setString(5, b.getBpress());
            pstmt.setString(6, b.getBlication());
            pstmt.setInt(7, b.getBquantity());
            pstmt.setInt(8, b.getBtimes());
            pstmt.setInt(9,b.getBrecommend());
            pstmt.setString(10,b.getBimage());
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
    public boolean deleteBook(int Bno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "delete from lib.book where Bno =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
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
    public boolean isExist(int Bno) {
        return queryBook(Bno) != null;
    }

    @Override
    public boolean updataBook(int Bno, book b) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.book set Bname = ?,Bcategory = ?,Bauthor = ?,Bpress = ?,Blocation = ?,Bquantity = ?,Btimes = ?,Brecommend = ? ,Bimage = ?where Bno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, b.getBname());
            pstmt.setString(2, b.getBcategory());
            pstmt.setString(3, b.getBauthor());
            pstmt.setString(4, b.getBpress());
            pstmt.setString(5, b.getBlication());
            pstmt.setInt(6, b.getBquantity());
            pstmt.setInt(7,b.getBtimes());
            pstmt.setInt(8,b.getBrecommend());
            pstmt.setString(9,b.getBimage());
            pstmt.setInt(10, Bno);
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
    public boolean reduceBook(int Bno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.book set Bquantity = Bquantity-1 , Btimes = Btimes+1 where Bno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
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
    public boolean plusBook(int Bno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.book set Bquantity = Bquantity+1  where Bno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
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
    public book queryBook(int Bno) {
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.book where Bno =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);
            }
            return book;
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
    public List<book> queryAllbook() {
        List<book> books = new ArrayList<>();
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.book ORDER BY Btimes DESC ";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);                books.add(book);
            }
            return books;
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
    public List<book> queryBookbyname(String name) {
        List<book> books = new ArrayList<>();
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.book where Bname like ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, "%"+name+"%");
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);                books.add(book);
            }
            return books;
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
    public List<book> queryBookbycategory(String category) {
        List<book> books = new ArrayList<>();
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.book where Bcategory like ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, "%"+category+"%");
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);                books.add(book);
            }
            return books;
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
    public List<book> queryBookbyauthor(String author) {
        List<book> books = new ArrayList<>();
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.book where Bauthor like ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, "%"+author+"%");
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);                books.add(book);
            }
            return books;
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
    public boolean plusBookrecommend(int Bno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.book set Brecommend = Brecommend+1 where Bno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
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
    public book queryMaxrecommend() {
        book book = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("数据库驱动加载成功");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "SELECT * FROM book order by Brecommend desc limit 1;";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int BNo = rs.getInt("Bno");
                String Bname = rs.getString("Bname");
                String Bcategory = rs.getString("Bcategory");
                String Bauthor = rs.getString("Bauthor");
                String Bpress = rs.getString("Bpress");
                String Blocation = rs.getString("Blocation");
                int Bquantity = rs.getInt("Bquantity");
                int Btimes = rs.getInt("Btimes");
                int Brecommend = rs.getInt("Brecommend");
                String Bimage = rs.getString("Bimage");
                book = new book(BNo,Bname,Bcategory,Bauthor, Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);            }
            return book;
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
