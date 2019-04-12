/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.servlet;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import LogicaNegocio.Alumno;
import com.gestion.control.Control;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
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

    Control principal;
            
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
 
             
     /*   try {
            List<String> supplierNames = new ArrayList<>();
            supplierNames.add("sup1");
            supplierNames.add("sup2");
            supplierNames.add("sup3");
            
            request.setAttribute("alumno", principal.opcionesAlumnos("LISTAR"));
            request.getRequestDispatcher("/Alumno.jsp").forward(request, response);
           // processRequest(request, response);
        } catch (GlobalException | NoDataException ex) {
            Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
         
         
          
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       Alumno a = new Alumno("a", "a", "a", "a", "2001-02-02", "a", "a");
       Alumno b = new Alumno("b", "b", "b", "a", "2001-02-02", "a", "a");
       Alumno c = new Alumno("c", "c", "c", "a", "2001-02-02", "a", "a");
       List<Alumno> alumnos = new ArrayList<>();
//       alumnos.add(a);
//       alumnos.add(b);
//       alumnos.add(c);
       
       principal = Control.instance();
       
        try {
            alumnos = principal.opcionesAlumnos("Listar");
        } catch (GlobalException ex) {
            Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoDataException ex) {
            Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
        } 
       request.setAttribute("alumno", alumnos);
       request.getRequestDispatcher("/Alumno.jsp").forward(request, response);
          
            
        
       
    } 
    
  /*  public void no(){
        try {
            alumnos = principal.opcionesAlumnos("LISTAR");
            System.out.println(alumnos);
        } catch (GlobalException | NoDataException ex) {
            Logger.getLogger(MantenimientosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }*/

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
