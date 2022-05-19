package entity;

public class recording {
    int Rno;
    int Sno;
    int Bno;
    String BOday;
    String BOBday;
    boolean Isreturn;

    public recording (){

    }

    public recording(int Rno,int Sno,int Bno,String BOday,String BOBday,boolean Isreturn){
        this.Rno = Rno;
        this.Sno = Sno;
        this.Bno = Bno;
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

    public int getSno() {
        return Sno;
    }

    public void setSno(int sno) {
        Sno = sno;
    }

    public int getBno() {
        return Bno;
    }

    public void setBno(int bno) {
        Bno = bno;
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
