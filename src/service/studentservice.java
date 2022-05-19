package service;

import entity.student;

import java.util.List;

public interface studentservice {
    //注册新用户
    public boolean addStudent(student student);

    //修改学生信息
    public boolean updataStudent(int Sno,student student);

    //学生借书次数加一
    public boolean plusStrudenttimes(int Sno);

    //更改学生密码
    public boolean updataStudentpwd(int Sno,String newSpassword);

    //查找学生信息
    public student queryStudent(int Sno);

    //查询所有学生信息(按借书次数排序）
    public List<student> queryAllstudent();

    //登录
    public boolean login(int Sno,String Spassword);
}
