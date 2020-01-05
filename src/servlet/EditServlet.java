package servlet;

import DAO.StudentDAO;
import bean.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/index/editStudent")
public class EditServlet extends HttpServlet {

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        Student student = new StudentDAO().get(id);

        req.setAttribute("student", student);

        req.getRequestDispatcher("/editStudent.jsp").forward(req, resp);
    }
}