package servlet;

import entity.book;
import entity.recording;
import entity.student;
import service.Impl.bookserviceImpl;
import service.Impl.recordingserviceImpl;
import service.Impl.studentserviceImpl;
import service.bookservice;
import service.recordingservice;
import service.studentservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "BorrowbookServlet")
public class BorrowbookServlet extends HttpServlet {
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
        recordingservice recordingservice = new recordingserviceImpl();
        studentservice studentservice = new studentserviceImpl();

        book book = (book)session.getAttribute("book");
        int Bno = book.getBno();
        int Sno = (int) session.getAttribute("Sno");
        long nowTime = System.currentTimeMillis()/1000;
        int Rno = new Long(nowTime).intValue();
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String BOday = formatter.format(currentTime);
        String BOBday = null;
        boolean Isreturn = false;
        book newbook = new book();
        session.removeAttribute("book");
        session.setAttribute("book",newbook);

        recording recording = new recording(Rno,Sno,Bno,BOday,BOBday,Isreturn);

        recordingservice.addRecording(recording);
        bookservice.reduceBook(Bno);
        studentservice.plusStrudenttimes(Sno);

        response.sendRedirect("SqueryallbookServlet");
    }
}
