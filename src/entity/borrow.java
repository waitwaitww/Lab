package entity;

public class borrow {
    int Rno;
    String Bname;
    String Sname;
    String BOday;
    String BOBday;
    boolean Isreturn;

    public borrow(){

    }

    public borrow(int Rno,String Bname,String Sname,String BOday,String BOBday,boolean Isreturn){
        this.Rno = Rno;
        this.Bname = Bname;
        this.Sname = Sname;
        this.BOday = BOday;
        this.BOBday = BOBday;
        this.Isreturn = Isreturn;
    }

    public int getRno() {
        return Rno;
    }

    public void setRno(int rno) {
        Rno = rno;
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String bname) {
        Bname = bname;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public String getBOday() {
        return BOday;
    }

    public void setBOday(String BOday) {
        this.BOday = BOday;
    }

    public String getBOBday() {
        return BOBday;
    }

    public void setBOBday(String BOBday) {
        this.BOBday = BOBday;
    }

    public boolean isIsreturn() {
        return Isreturn;
    }

    public void setIsreturn(boolean isreturn) {
        Isreturn = isreturn;
    }
}
