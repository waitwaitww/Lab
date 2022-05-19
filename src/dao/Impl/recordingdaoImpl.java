package dao.Impl;

import dao.recordingdao;
import entity.recording;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class recordingdaoImpl implements recordingdao{
    private final String URL = "jdbc:mysql://localhost:3306/lib";
    private final String USERNAME = "root";
    private final String PWD = "123456";

    @Override
    public boolean addRecording(recording r) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            int Rno = r.getRno();
            String sql = "insert into lib.recording values(?,?,?,?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Rno);
            pstmt.setInt(2, r.getSno());
            pstmt.setInt(3, r.getBno());
            pstmt.setString(4, r.getBOday());
            pstmt.setString(5, r.getBOBday());
            pstmt.setBoolean(6, r.isIsreturn());
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
    public boolean isExiet(int Rno) {
        return qeuryRecording(Rno) != null;
    }

    @Override
    public boolean deleteRecording(int Rno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "delete from lib.recording where Rno =?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Rno);
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
    public boolean deleteRecordingbySno(int Bno) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "delete from lib.recording where Bno =?";
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
    public recording qeuryRecording(int Rno) {
        recording recording = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.recording where Rno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Rno);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int Sno = rs.getInt("Sno");
                int Bno = rs.getInt("Bno");
                String BOday = rs.getString("BOday");
                String BOBday = rs.getString("BOBday");
                boolean Isreturn = rs.getBoolean("Isreturn");
                recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);
            }
            return recording;
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
    public List<recording> queryRecordingbySno(int Sno) {
        List<recording> recordings = new ArrayList<>();
        recording recording = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.recording where Sno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int Rno = rs.getInt("Rno");
                int Bno = rs.getInt("Bno");
                String BOday = rs.getString("BOday");
                String BOBday = rs.getString("BOBday");
                boolean Isreturn = rs.getBoolean("Isreturn");
                recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);
                recordings.add(recording);
            }
            return recordings;
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
    public List<recording> queryRecordingbyBno(int Bno) {
        List<recording> recordings = new ArrayList<>();
        recording recording = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.recording where Bno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Bno);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int Rno = rs.getInt("Rno");
                int Sno = rs.getInt("Sno");
                String BOday = rs.getString("BOday");
                String BOBday = rs.getString("BOBday");
                boolean Isreturn = rs.getBoolean("Isreturn");
                recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);
                recordings.add(recording);
            }
            return recordings;
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
    public recording queryRecordingbySnoandBno(int Sno, int Bno) {
        recording recording = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.recording where Sno = ? and Bno = ?";
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, Sno);
            pstmt.setInt(2, Bno);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int Rno = rs.getInt("Rno");
                String BOday = rs.getString("BOday");
                String BOBday = rs.getString("BOBday");
                boolean Isreturn = rs.getBoolean("Isreturn");
                recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);
            }
            return recording;
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
    public List<recording> queryAllrecording() {
        List<recording> recordings = new ArrayList<>();
        recording recording = null;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "select * from lib.recording";
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int Rno = rs.getInt("Rno");
                int Sno = rs.getInt("Sno");
                int Bno = rs.getInt("Bno");
                String BOday = rs.getString("BOday");
                String BOBday = rs.getString("BOBday");
                boolean Isreturn = rs.getBoolean("Isreturn");
                recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);
                recordings.add(recording);
            }
            return recordings;
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
    public boolean updataRecording(int Rno, String BOBday) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL,USERNAME,PWD);
            String sql = "update lib.recording set BOBday = ?,Isreturn = ? where Rno = ? ";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, BOBday);
            pstmt.setBoolean(2, true);
            pstmt.setInt(3, Rno);
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

}
