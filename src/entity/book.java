package entity;

public class book {
    int Bno;
    String Bname;
    String Bcategory;
    String Bauthor;
    String Bpress;
    String Blication;
    int Bquantity;
    int Btimes;
    int Brecommend;
    String Bimage;

    public  book(){

    }

    public book(int Bno,String Bname,String Bcategory,String Bauthor,String Bpress,String Blication,int Bquantity,int Btimes,int Brecommend,String Bimage){
        this.Bno = Bno;
        this.Bname = Bname;
        this.Bcategory = Bcategory;
        this.Bauthor = Bauthor;
        this.Bpress = Bpress;
        this.Blication = Blication;
        this.Bquantity = Bquantity;
        this.Btimes = Btimes;
        this.Brecommend = Brecommend;
        this.Bimage = Bimage;
    }

    public int getBno() {
        return Bno;
    }

    public void setBno(int bno) {
        Bno = bno;
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String bname) {
        Bname = bname;
    }

    public String getBcategory() {
        return Bcategory;
    }

    public void setBcategory(String bcategory) {
        Bcategory = bcategory;
    }

    public String getBauthor() {
        return Bauthor;
    }

    public void setBauthor(String bauthor) {
        Bauthor = bauthor;
    }

    public String getBpress() {
        return Bpress;
    }

    public void setBpress(String bpress) {
        Bpress = bpress;
    }

    public String getBlication() {
        return Blication;
    }

    public void setBlication(String blication) {
        Blication = blication;
    }

    public int getBquantity() {
        return Bquantity;
    }

    public void setBquantity(int bquantity) {
        Bquantity = bquantity;
    }

    public int getBtimes() {
        return Btimes;
    }

    public void setBtimes(int btimes) {
        Btimes = btimes;
    }

    public int getBrecommend() {
        return Brecommend;
    }

    public void setBrecommend(int brecommend) {
        Brecommend = brecommend;
    }

    public String getBimage() {
        return Bimage;
    }

    public void setBimage(String bimage) {
        Bimage = bimage;
    }
}
