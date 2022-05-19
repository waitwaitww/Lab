package dao;

import entity.student;

import java.util.List;

public interface studentdao {
    //增加学生
    public boolean addStudent(student s);

    //删除学生
    public boolean deleteStudent(int Sno);

    //查询学生是否存在
    public boolean isExist(int Sno);

    //更改学生信息
    public boolean updataStudent(int Sno,student s);

    //更改学生密码
    public boolean updataPassword(int Sno,String newpassword);

    //查询用户信息
    public student queryStudent(int Sno);

    //用户借书次数加一
    public boolean plusStudent(int Sno);

    //按借书次数查询所有学生
    public List<student> queryAllstudent();

    //登录
    public boolean login(int Sno,String Spassword);
}
