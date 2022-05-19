package entity;

public class post {
    int Pno;
    int Ano;
    String Pday;
    String Pcontent;
    String Ptitle;

    public post(){

    }

    public post(int Pno, int Ano, String Pday, String Pcontent,String Ptitle){
        this.Pno = Pno;
        this.Ano = Ano;
        this.Pday = Pday;
        this.Pcontent = Pcontent;
        this.Ptitle = Ptitle;
    }

    public int getPno() {
        return Pno;
    }

    public void setPno(int pno) {
        Pno = pno;
    }

    public int getAno() {
        return Ano;
    }

    public void setAno(int ano) {
        Ano = ano;
    }

    public String getPday() {
        return Pday;
    }

    public void setPday(String pday) {
        Pday = pday;
    }

    public String getPcontent() {
        return Pcontent;
    }

    public void setPcontent(String pcontent) {
        Pcontent = pcontent;
    }

    public String getPtitle() {
        return Ptitle;
    }

    public void setPtitle(String ptitle) {
        Ptitle = ptitle;
    }
}
