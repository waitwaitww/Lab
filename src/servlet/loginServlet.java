package servlet;

import entity.administrator;
import entity.book;
import entity.recording;
import service.Impl.administratorserviceImpl;
import service.Impl.recordingserviceImpl;
import service.administratorservice;
import service.recordingservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
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
        administratorservice administratorservice = new administratorserviceImpl();

        int Ano = (int) request.getAttribute("No");
        String Apassword = (String) request.getAttribute("password");
        administrator administrator = administratorservice.queryAdministrator(Ano);
        String Aname = administrator.getAname();
        book book = new book();
        session.setAttribute("Ano",Ano);
        session.setAttribute("Apassword",Apassword);
        session.setAttribute("Aname",Aname);
        session.setAttribute("book",book);

        boolean re = administratorservice.loginAdministrator(Ano,Apassword);
        if(re)
            request.getRequestDispatcher("queryindexServlet").forward(request,response);
        else response.sendRedirect("login.jsp");
    }
}
