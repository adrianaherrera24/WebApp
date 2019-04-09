/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Alumno;
import static com.gestion.servlet.Login.principal;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adriana Herrera
 */
@WebServlet(urlPatterns = {"/Mantenimietos"})
public class MantenimietosServlet extends HttpServlet {

    List<Alumno> alumnos;
            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MantenimietosServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MantenimietosServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        getServletContext().getRequestDispatcher("/MenuMantenimientos.jsp").forward(request, response);
        try {
            alumnos = principal.opcionesAlumnos("LISTAR");
            out.println("Servlet GET: " + alumnos);
        } catch (GlobalException | NoDataException ex) {
            Logger.getLogger(MantenimietosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            alumnos = principal.opcionesAlumnos("LISTAR");
            out.println("Servlet: " + alumnos);
        } catch (GlobalException | NoDataException ex) {
            Logger.getLogger(MantenimietosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
