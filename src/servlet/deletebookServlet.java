package servlet;

import entity.book;
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

@WebServlet(name = "deletebookServlet")
public class deletebookServlet extends HttpServlet {
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

        int Bno = Integer.parseInt(request.getParameter("Bno"));
        recordingservice recordingservice = new recordingserviceImpl();

        recordingservice.deleteRecodingbyBno(Bno);
        boolean re = bookservice.deleteBook(Bno);

        if(re)
            response.sendRedirect("queryallbookServlet");
    }
}
