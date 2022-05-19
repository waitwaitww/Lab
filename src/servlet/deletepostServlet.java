package servlet;

import service.Impl.bookserviceImpl;
import service.Impl.postserviceImpl;
import service.bookservice;
import service.postservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "deletepostServlet")
public class deletepostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        postservice postservice = new postserviceImpl();

        int Pno = Integer.parseInt(request.getParameter("Pno"));

        boolean re = postservice.deletePost(Pno);

        if(re)
            response.sendRedirect("queryindexServlet");
    }
}
