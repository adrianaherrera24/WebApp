/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Alumno;
import com.gestion.control.Main;
import com.gestion.control.Control;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adriana Herrera
 */
@WebServlet(name = "Alumnos", urlPatterns = {"/Alumnos"})
public class AlumnosServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Alumnos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Alumnos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //obtenerAlumnos(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        obtenerAlumnos(request, response);
        processRequest(request, response);
    }

    public void obtenerAlumnos(HttpServletRequest request, HttpServletResponse response){
        try {
            request.getSession(false);
            List<Alumno> alumnos = Main.principal.opcionesAlumnos("LISTAR");
            out.println("Servlet: " + alumnos);
            request.setAttribute("alumnos", alumnos);
            request.getRequestDispatcher("Alumno.jsp").forward(request, response);
        } catch (GlobalException | NoDataException | ServletException | IOException ex) {
            out.println("Servlet: " + ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
