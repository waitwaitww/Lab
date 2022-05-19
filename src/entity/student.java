package entity;

public class student {
    int Sno;
    String Sname;
    String Spassword;
    int Stimes;

    public student(){

    }

    public student(int Sno,String Sname,String Spassword,int Stimes){
        this.Sno = Sno;
        this.Sname = Sname;
        this.Spassword = Spassword;
        this.Stimes = Stimes;
    }

    public int getSno() {
        return Sno;
    }

    public String getSname() {
        return Sname;
    }

    public String getSpassword() {
        return Spassword;
    }

    public void setSno(int sno) {
        Sno = sno;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public void setSpassword(String spassword) {
        Spassword = spassword;
    }

    public int getStimes() {
        return Stimes;
    }

    public void setStimes(int stimes) {
        Stimes = stimes;
    }
}
