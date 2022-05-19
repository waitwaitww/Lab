package dao.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.administratordao;
import entity.administrator;

public class administratordaoImpl implements administratordao{
    private final String URL = "jdbc:mysql://localhost:3306/lib";
    private final String USERNAME = "root";
    private final String PWD = "123456";

    @Override
    //添加管理员
    public boolean addAdministrator(administrator a) {

        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            int Ano = a.getAno();
            String Aname = a.getAname();
            String Apassword = a.getApassword();
            String sql = "insert into lib.administrator values(?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Ano);
            pstmt.setString(2, Aname);
            pstmt.setString(3, Apassword);
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    //删除管理员
    public boolean deleteAdministrator(int Ano) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "delete from lib.administrator where Ano =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Ano);
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean loginAdministrator(int Ano, String Apassword) {
        administrator adm = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String trueApassword = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "select Apassword from lib.administrator where Ano =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Ano);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                trueApassword = rs.getString("Apassword");
            }
            return ((trueApassword != null) && (trueApassword.equals(Apassword))) ;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    //查询管理员是否存在
    public boolean isExist(int Ano) {
        return queryAdministrator(Ano) != null;
    }

    @Override
    //更改管理员信息
    public boolean updataAdministrator(int Ano, administrator s) {
        return false;
    }

    @Override
    //更改管理学密码
    public boolean updataPassword(int Ano, String newpassword) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update administrator set Apassword = ? where Ano = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, newpassword);
            pstmt.setInt(2, Ano);
            int count = pstmt.executeUpdate();
            return count > 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return false;
        }
        finally{
            try {
                if( pstmt!= null)	pstmt.close();
                if(connection != null)	connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    //查询管理员信息
    public administrator queryAdministrator(int Ano) {
        administrator adm = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "select * from lib.administrator where Ano =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Ano);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int ano = rs.getInt("Ano");
                String Aname = rs.getString("Aname");
                String Apassword = rs.getString("Apassword");
                adm = new administrator(ano, Aname, Apassword);
            }
            return adm;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
