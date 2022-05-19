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

@WebServlet(name = "SfindServlet")
public class SfindServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        recordingservice recordingservice = new recordingserviceImpl();
        bookservice bookservice = new bookserviceImpl();

        int Rno = Integer.parseInt(request.getParameter("Rno"));

        recording recording = recordingservice.queryRecording(Rno);
        book book = bookservice.queryBook(recording.getBno());

        request.setAttribute("book",book);
        request.setAttribute("Rno",Rno);

        request.getRequestDispatcher("returnbook_s.jsp").forward(request,response);
    }
}
