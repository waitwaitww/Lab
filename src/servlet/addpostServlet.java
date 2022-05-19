package servlet;

import entity.administrator;
import entity.post;
import service.Impl.postserviceImpl;
import service.postservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "addpostServlet")
public class addpostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");

        //HttpSession session = request.getSession();
        postservice postservice = new postserviceImpl();

        //administrator administrator = (entity.administrator)session.getAttribute("administrator");

        long nowTime = System.currentTimeMillis()/1000;
        int Pno = new Long(nowTime).intValue();
        //int Ano = administrator.getAno();
        int Ano = 123123;
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String Pday = formatter.format(currentTime);
        String Pcontent =request.getParameter("Pcontent");
        String Ptitle = request.getParameter("Ptitle");

        post post = new post(Pno,Ano,Pday,Pcontent,Ptitle);

        boolean re = postservice.addPost(post);
        response.sendRedirect("queryindexServlet");
    }
}
