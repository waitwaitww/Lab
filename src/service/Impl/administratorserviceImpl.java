package service.Impl;

import dao.Impl.administratordaoImpl;
import dao.administratordao;
import entity.administrator;
import service.administratorservice;
public class administratorserviceImpl implements administratorservice{
    administratordao administratordao = new administratordaoImpl() ;
    @Override
    public boolean addAdministrator(administrator administrator) {
        if (!administratordao.isExist(administrator.getAno()))
            return administratordao.addAdministrator(administrator);
        return false;
    }

    @Override
    public boolean updataAdministrator(int Ano, administrator administrator) {
        if (administratordao.isExist(Ano))
            return administratordao.updataAdministrator(Ano,administrator);
        return false;
    }

    @Override
    public boolean updataAdministratorpwd(int Ano, String newApassword) {
        if (administratordao.isExist(Ano))
            return administratordao.updataPassword(Ano,newApassword);
        return false;
    }

    @Override
    public boolean loginAdministrator(int Ano, String Apassword) {
        return administratordao.loginAdministrator(Ano,Apassword);
    }

    @Override
    public administrator queryAdministrator(int Ano) {
        return administratordao.queryAdministrator(Ano);
    }
}
