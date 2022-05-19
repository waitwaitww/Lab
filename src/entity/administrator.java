package entity;

public class administrator {
    int Ano;
    String Aname;
    String Apassword;

    public administrator(){

    }

    public administrator(int Ano,String Aname,String Apassword){
        this.Ano = Ano;
        this.Aname = Aname;
        this.Apassword = Apassword;
    }

    public int getAno() {
        return Ano;
    }

    public void setAno(int ano) {
        Ano = ano;
    }

    public String getAname() {
        return Aname;
    }

    public void setAname(String aname) {
        Aname = aname;
    }

    public String getApassword() {
        return Apassword;
    }

    public void setApassword(String apassword) {
        Apassword = apassword;
    }
}
