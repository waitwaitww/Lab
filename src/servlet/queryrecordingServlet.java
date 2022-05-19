package servlet;


import entity.recording;
import service.Impl.recordingserviceImpl;
import service.recordingservice;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "qeuryrecordingServlet")
public class queryrecordingServlet extends HttpServlet {
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
        recordingservice recordingservice = new recordingserviceImpl();

        List<recording> recordings = recordingservice.queryAllrecording();

        request.setAttribute("recordings",recordings);

        request.getRequestDispatcher("queryrecording.jsp").forward(request,response);
    }
}
