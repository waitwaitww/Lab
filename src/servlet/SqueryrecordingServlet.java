package servlet;

import entity.borrow;
import entity.recording;
import entity.student;
import service.Impl.bookserviceImpl;
import service.Impl.recordingserviceImpl;
import service.Impl.studentserviceImpl;
import service.bookservice;
import service.recordingservice;
import service.studentservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SqueryrecordingServlet")
public class SqueryrecordingServlet extends HttpServlet {
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
        bookservice bookservice = new bookserviceImpl();
        studentservice studentservice = new studentserviceImpl();

        int Sno = (int) session.getAttribute("Sno");
        String Sname = studentservice.queryStudent(Sno).getSname();
        List<recording> recordings = recordingservice.qeuryRecordingBysno(Sno);
        List<borrow> borrows = new ArrayList<>();
        borrow borrow = new borrow();
        for(recording recording:recordings){
            if (recording.isIsreturn()) {
                borrow.setBname(bookservice.queryBook(recording.getBno()).getBname());
                borrow.setRno(recording.getRno());
                borrow.setSname(Sname);
                borrow.setBOday(recording.getBOday());
                borrow.setBOBday(recording.getBOBday());
                borrow.setIsreturn(true);
                borrows.add(borrow);
            }
            borrow = new borrow();
        }

        request.setAttribute("borrows",borrows);

        request.getRequestDispatcher("queryrecording_s.jsp").forward(request,response);
    }
}
