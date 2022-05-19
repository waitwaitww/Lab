package servlet;

import entity.book;
import service.Impl.bookserviceImpl;
import service.bookservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addbookServlet")
public class addbookServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        bookservice bookservice = new bookserviceImpl();

        long nowTime = System.currentTimeMillis()/1000;
        int Bno = new Long(nowTime).intValue();
        String Bname =request.getParameter("Bname");
        String Bcategory = request.getParameter("Bcategory");
        String Bauthor = request.getParameter("Bauthor");
        String Bpress = request.getParameter("Bpress");
        String Blocation = request.getParameter("Blocation");

        int Btimes = 0;
        int Brecommend = 0;
        String Bimage = request.getParameter("Bimage");
        String str = request.getParameter("Bquantity");
        System.out.println(str);
        int Bquantity = Integer.parseInt(str);

        book book = new book(Bno,Bname,Bcategory,Bauthor,Bpress,Blocation,Bquantity,Btimes,Brecommend,Bimage);
        boolean re = bookservice.addBook(book);
            response.sendRedirect("queryallbookServlet");
    }
}
