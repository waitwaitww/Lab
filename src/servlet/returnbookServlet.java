package servlet;

import entity.book;
import entity.recording;
import service.Impl.bookserviceImpl;
import service.Impl.recordingserviceImpl;
import service.bookservice;
import service.recordingservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "returnbookServlet")
public class returnbookServlet extends HttpServlet {
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

//        int Bno = Integer.parseInt(request.getParameter("Bno"));
//        int Sno = 123123;
        //int Sno = ((student)session.getAttribute("Student")).getSno();
        //int Rno = recordingservice.queryRecordingBySnoandBno(Sno,Bno).getRno();
        int Rno = Integer.parseInt(request.getParameter("Rno"));
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String BOBday = formatter.format(currentTime);

        recording recording = recordingservice.queryRecording(Rno);
        book book = bookservice.queryBook(recording.getBno());

        recordingservice.updataRecording(Rno,BOBday);
        bookservice.returnBook(recording.getBno());

        request.getRequestDispatcher("SqueryallbookServlet").forward(request,response);
    }
}
