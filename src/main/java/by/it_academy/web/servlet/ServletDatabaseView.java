package by.it_academy.web.servlet;

import by.it_academy.web.entity.Student;
import by.it_academy.web.util.HibernateUtil;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "getInfo", value = "/getInfo")
public class ServletDatabaseView extends HttpServlet {
    private final EntityManager entityManager = HibernateUtil.getEntityManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        @SuppressWarnings("unchecked")
        List<Student> studentList = entityManager.createQuery("from "
                + Student.class.getName()).getResultList();
        req.setAttribute("studentList", studentList);
        req.getRequestDispatcher("viewData.jsp").forward(req, resp);
    }
}
