package dao.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.studentdao;
import entity.student;

public class studentdaoImpl implements studentdao {

    private final String URL = "jdbc:mysql://localhost:3306/lib";
    private final String USERNAME = "root";
    private final String PWD = "123456";

    //增加学生
    public boolean addStudent(student s) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            int Sno = s.getSno();
            String Sname = s.getSname();
            String Spassword = s.getSpassword();
            int Stimes = s.getStimes();
            String sql = "insert into lib.student values(?,?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
            pstmt.setString(2, Sname);
            pstmt.setString(3, Spassword);
            pstmt.setInt(4, Stimes);
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

    //删除学生
    public boolean deleteStudent(int Sno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "delete from lib.student where Sno =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
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

    //查询学生是否存在
    public boolean isExist(int Sno) {
        return queryStudent(Sno) != null;
    }

    //更改学生信息
    public boolean updataStudent(int Sno,student s){

        return false;
    }

    @Override
    //更改学生密码
    public boolean updataPassword(int Sno, String newpassword) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.student set Spassword = ? where Sno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, newpassword);
            pstmt.setInt(2, Sno);
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

    //查询用户信息
    public student queryStudent(int Sno) {
        student stu = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "select * from lib.student where Sno =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int sno = rs.getInt("Sno");
                String Sname = rs.getString("Sname");
                String Spassword = rs.getString("Spassword");
                int Stimes = rs.getInt("Stimes");
                stu = new student(sno, Sname, Spassword,Stimes);
            }
            return stu;
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

    @Override
    public boolean plusStudent(int Sno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.student set Stimes = Stimes+1  where Sno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
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
    public List<student> queryAllstudent() {
        List<student> students = new ArrayList<>();
        student stu = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "select * from lib.student ORDER BY Stimes DESC";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                int sno = rs.getInt("Sno");
                String Sname = rs.getString("Sname");
                String Spassword = rs.getString("Spassword");
                int Stimes = rs.getInt("Stimes");
                stu = new student(sno, Sname, Spassword,Stimes);
                students.add(stu);
            }
            return students;
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

    @Override
    public boolean login(int Sno, String Spassword) {
        student stu = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String trueSpassword = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PWD);
            String sql = "select * from lib.student where Sno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                trueSpassword = rs.getString("Spassword");
            }
            boolean re =((trueSpassword.equals(Spassword))&&(trueSpassword != null));
            return re;
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
}
