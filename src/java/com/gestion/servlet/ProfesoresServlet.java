/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Profesor;
import com.gestion.control.Control;
import java.io.IOException;
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
@WebServlet(urlPatterns = {"/profesor"})
public class ProfesoresServlet extends HttpServlet {

    Control principal_ = Control.instance();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().equals("/profesor"))
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
            Profesor nuevoProfesor = new Profesor();
            nuevoProfesor.setId(request.getParameter("cedula"));
            nuevoProfesor.setNombre(request.getParameter("nombre"));
            nuevoProfesor.setTelefono(request.getParameter("telefono"));
            nuevoProfesor.setEmail(request.getParameter("email"));
            nuevoProfesor.setRol("PROF");
            principal_.opcionesProfesores("AGREGAR", nuevoProfesor);
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
