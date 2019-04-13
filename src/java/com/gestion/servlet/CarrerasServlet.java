/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Carrera;
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
@WebServlet(urlPatterns = {"/carrera"})
public class CarrerasServlet extends HttpServlet {

    Control principal_ = Control.instance();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getServletPath().equals("/carrera"))
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
            Carrera nuevaCarrera = new Carrera();
            nuevaCarrera.setId(request.getParameter("codigo"));
            nuevaCarrera.setNombre(request.getParameter("nombre"));
            nuevaCarrera.setTitulo(request.getParameter("titulo"));
            principal_.opcionesCarreras("AGREGAR", nuevaCarrera);
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
