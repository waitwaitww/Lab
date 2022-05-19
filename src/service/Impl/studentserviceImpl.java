package service.Impl;

import dao.Impl.studentdaoImpl;
import dao.studentdao;
import entity.student;
import service.studentservice;

import java.util.List;

public class studentserviceImpl implements studentservice{

    studentdao studentdao = new studentdaoImpl();
    @Override
    public boolean addStudent(student student) {
        if(!studentdao.isExist(student.getSno()))
            return studentdao.addStudent(student);
        return false;
    }

    @Override
    public boolean updataStudent(int Sno, student student) {
        if(studentdao.isExist(Sno))
            return studentdao.updataStudent(Sno,student);
        return false;
    }

    @Override
    public boolean plusStrudenttimes(int Sno) {
        if(studentdao.isExist(Sno))
            return studentdao.plusStudent(Sno);
        return false;
    }

    @Override
    public boolean updataStudentpwd(int Sno, String newSpassword) {
        if(studentdao.isExist(Sno))
            return studentdao.updataPassword(Sno,newSpassword);
        return false;
    }

    @Override
    public student queryStudent(int Sno) {
        return studentdao.queryStudent(Sno);
    }

    @Override
    public List<student> queryAllstudent() {
        return studentdao.queryAllstudent();
    }

    @Override
    public boolean login(int Sno, String Spassword) {
        boolean re = studentdao.login(Sno,Spassword);
        if(studentdao.isExist(Sno))
            return re;
        return false;
    }
}
