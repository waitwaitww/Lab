package dao;

import entity.administrator;

public interface administratordao {
    //增加管理员
    public boolean addAdministrator(administrator a);

    //删除管理员
    public boolean deleteAdministrator(int Ano);

    //登录
    public  boolean loginAdministrator(int Ano,String Apassword);

    //查询管理员是否存在
    public boolean isExist(int Ano);

    //更改管理员信息
    public boolean updataAdministrator(int Ano, administrator s);

    //更改管理学密码
    public boolean updataPassword(int Ano,String newpassword);

    //查询管理员信息
    public administrator queryAdministrator(int Ano);
}
