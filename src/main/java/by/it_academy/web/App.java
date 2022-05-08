package by.it_academy.web;

import by.it_academy.web.entity.Student;
import by.it_academy.web.util.HibernateUtil;

import javax.persistence.EntityManager;
import java.sql.Date;

public class App {
    public static void main(String[] args) {
        EntityManager entityManager = HibernateUtil.getEntityManager();

        entityManager.getTransaction().begin();
        entityManager.persist(Student.builder()
                .firstName("John")
                .lastName("Smith")
                .birthDay(Date.valueOf("1980-09-26"))
                .build());
        entityManager.persist(Student.builder()
                .firstName("Will")
                .lastName("Jonson")
                .birthDay(Date.valueOf("1988-01-20"))
                .build());
        entityManager.persist(Student.builder()
                .firstName("Jerry")
                .lastName("Willis")
                .birthDay(Date.valueOf("1976-04-11"))
                .build());
        entityManager.persist(Student.builder()
                .firstName("Tom")
                .lastName("Hardy")
                .birthDay(Date.valueOf("1982-05-20"))
                .build());
        entityManager.persist(Student.builder()
                .firstName("Paul")
                .lastName("Jenkins")
                .birthDay(Date.valueOf("1991-03-08"))
                .build());
        entityManager.getTransaction().commit();
        entityManager.close();
        HibernateUtil.close();

    }
}
