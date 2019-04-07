package com.gestion.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juanmurillo
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    
    private String user;
    private String pass;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      /*  response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>User: " + user + "</h1>");
            out.println("<h1>Pass: " + pass + "</h1>");

            out.println("</body>");
            out.println("</html>");
        }*/
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        //processRequest(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        comprobarUsuario(request, response);
    }
    
    public void comprobarUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        /// Obtengo los datos desde login.jsp correspondiente al name de cada valor
        user = request.getParameter("username");
	pass = request.getParameter("password");
        
        if(user != null && !"".equals(pass)){ /// Si los espacios estan llenos
               if(user.equals("aherrera") && pass.equals("123")){ /// Validando usuario por defecto
                   request.getRequestDispatcher("MenuMantenimientos.jsp").forward(request, response); // Si se cumple se direge a la siguiente pagina
               }else{ /// Si no son correctos vuelve al login
                   out.println("Datos Incorrectos!");
                   response.sendRedirect("Login.jsp");
               }
        }else{
            out.println("Datos Faltantes!");
            response.sendRedirect("Login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
