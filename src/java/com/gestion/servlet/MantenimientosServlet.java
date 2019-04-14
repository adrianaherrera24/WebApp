/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Alumno;
import LogicaNegocio.Carrera;
import LogicaNegocio.Curso;
import LogicaNegocio.Profesor;
import com.gestion.control.Control;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Enumeration;
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
@WebServlet(urlPatterns = {"/Mantenimientos"})
public class MantenimientosServlet extends HttpServlet {

    Control principal = Control.instance();
    List<Alumno> alumnos = new ArrayList<>();
    List<Carrera> carreras = new ArrayList<>();
    List<Curso> cursos = new ArrayList<>();
    List<Profesor> profesores = new ArrayList<>();
    
    String name;
            
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
            out.println("<h1>Servlet MantenimietosServlet at " + request.getAttribute("alumno") + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        
       
            
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
         processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Enumeration e = request.getParameterNames();
        
        while(e.hasMoreElements()){
            Object o = e.nextElement();
            name = (String) o;
            out.println(name);
        }
        
        if(null != name)switch (name) {
            case "Carrera":
                try {
                    carreras = principal.opcionesCarreras("Listar");
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
                }   
                request.setAttribute("carrera", carreras);
                request.getRequestDispatcher("/Carrera.jsp").forward(request, response);
                break;
            case "Alumno":
                try {
                    alumnos = principal.opcionesAlumnos("Listar");
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
                }   
                request.setAttribute("alumno", alumnos);
                request.getRequestDispatcher("/Alumno.jsp").forward(request, response);
                break;
            case "Curso":
                try {
                    cursos = principal.opcionesCursos("Listar");
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
                }   
                request.setAttribute("curso", cursos);
                request.getRequestDispatcher("/Curso.jsp").forward(request, response);
                break;
            case "Profesor":
                try {
                    profesores = principal.opcionesProfesores("Listar");
                } catch (GlobalException | NoDataException ex) {
                    Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
                }   
                request.setAttribute("profesor", profesores);
                request.getRequestDispatcher("/Profesor.jsp").forward(request, response);
                break;
            default:
                break;
        }
    } 
  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
