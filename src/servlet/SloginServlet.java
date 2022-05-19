package servlet;

import entity.student;
import service.Impl.administratorserviceImpl;
import service.Impl.studentserviceImpl;
import service.administratorservice;
import service.studentservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SloginServlet")
public class SloginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // TODO Auto-generated method stub
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        studentservice studentservice = new studentserviceImpl();

        int Sno = (int) request.getAttribute("No");
        String Spassword = (String) request.getAttribute("password");
        student student = studentservice.queryStudent(Sno);
        String Sname = student.getSname();
        session.setAttribute("Sno",Sno);
        session.setAttribute("Spassword",Spassword);
        session.setAttribute("Sname",Sname);

        boolean re = studentservice.login(Sno,Spassword);
        if (re)
             request.getRequestDispatcher("SqueryallbookServlet").forward(request,response);
        response.sendRedirect("login.jsp");
    }
}
