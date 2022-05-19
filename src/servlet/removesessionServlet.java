package servlet;

import service.Impl.postserviceImpl;
import service.postservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "removesessionServlet")
public class removesessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();

        if(session.getAttribute("Sno")==null){
            session.removeAttribute("Ano");
            session.removeAttribute("Apassword");
        }
        else {
            session.removeAttribute("Sno");
            session.removeAttribute("Spassword");
        }

        response.sendRedirect("login.jsp");
    }
}
