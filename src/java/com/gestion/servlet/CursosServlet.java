/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Carrera;
import LogicaNegocio.Curso;
import com.gestion.control.Control;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(urlPatterns = {"/curso"})
public class CursosServlet extends HttpServlet {

    Control principal_ = Control.instance();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().equals("/curso"))
            this.agregar(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    public void agregar(HttpServletRequest request, HttpServletResponse response) throws IOException{
        try {
            Curso nuevoCurso = new Curso();
            nuevoCurso.setId(request.getParameter("codigo"));
            nuevoCurso.setNombre(request.getParameter("nombre"));
            nuevoCurso.setCreditos(Integer.parseInt(request.getParameter("creditos")));
            nuevoCurso.setHorasSemanales(Integer.parseInt(request.getParameter("horas")));
            nuevoCurso.setCarrera(request.getParameter("carrera"));
            nuevoCurso.setCiclo(Integer.parseInt(request.getParameter("ciclo")));
            nuevoCurso.setAnno(request.getParameter("anno"));
            principal_.opcionesCursos("AGREGAR", nuevoCurso);
            response.sendRedirect("/MenuMantenimientos.jsp");
        } catch (GlobalException | NoDataException ex) {
            Logger.getLogger(AlumnosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
