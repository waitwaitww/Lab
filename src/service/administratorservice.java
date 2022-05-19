package service;

import entity.administrator;

public interface administratorservice {
    //注册新管理员
    public boolean addAdministrator(administrator administrator);

    //修改管理员信息
    public boolean updataAdministrator(int Ano,administrator administrator);

    //更改管理员密码
    public boolean updataAdministratorpwd(int Ano,String newApassword);

    //登录
    public boolean loginAdministrator(int Ano,String Apassword);

    //查找管理员信息
    public administrator queryAdministrator(int Ano);
}
