package com.demo.servlet;

import com.demo.dao.PhoneDao;
import com.demo.entity.PhoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    PhoneDao dao = new PhoneDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> phones = getAllProduct();
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("listphone.jsp").forward(request, response);
    }

    private List<PhoneEntity> getAllProduct() {
        List<PhoneEntity> phones = dao.getAll();
        for (PhoneEntity p : phones) {
            System.out.println("Phone: "+p.getName());
        }
        return phones;
    }
}
