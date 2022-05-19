package servlet;

import entity.book;
import entity.post;
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
import java.util.List;

@WebServlet(name = "queryindexServlet")
public class queryindexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub

        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        postservice postservice = new postserviceImpl();
        bookservice bookservice = new bookserviceImpl();

        List<post> posts = postservice.queryPostnew();
        book book = bookservice.queryBookrecommend();

        request.setAttribute("posts",posts);
        request.setAttribute("book",book);

        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
