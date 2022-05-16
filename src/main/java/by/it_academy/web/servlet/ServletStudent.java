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
import java.sql.Date;

@WebServlet(name = "ServletStudent", value = "/ServletStudent")
public class ServletStudent extends HttpServlet {
    private final EntityManager entityManager = HibernateUtil.getEntityManager();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //Получение данных из index.jsp
        req.setCharacterEncoding("UTF-8");
        String firstName = req.getParameter("first_name");
        String lastName = req.getParameter("last_name");
        String birthDay = req.getParameter("birth_day");
        if (!firstName.equals("") &&
                !lastName.equals("") &&
                !birthDay.equals("")) {
            entityManager.getTransaction().begin();
            entityManager.persist(Student.builder()
                    .firstName(firstName)
                    .lastName(lastName)
                    .birthDay(Date.valueOf(birthDay))
                    .build());
            entityManager.getTransaction().commit();
            req.getRequestDispatcher("success.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }

}
