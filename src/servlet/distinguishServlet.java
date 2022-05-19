package servlet;

import service.Impl.studentserviceImpl;
import service.studentservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "distinguishServlet")
public class distinguishServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // TODO Auto-generated method stub
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        int No = Integer.parseInt(request.getParameter("No"));
        String password = request.getParameter("password");
        String choose = request.getParameter("choose");
        request.setAttribute("No",No);
        request.setAttribute("password",password);

        if (choose != null)
            request.getRequestDispatcher("loginServlet").forward(request,response);

        else request.getRequestDispatcher("studentloginServlet").forward(request,response);

        return;
        //response.sendRedirect("login.jsp");
    }
}
