/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.control;

import AccesoDatos.GlobalException;
import AccesoDatos.NoDataException;
import AccesoDatos.ServicioAlumnos;
import AccesoDatos.ServicioCarreras;
import AccesoDatos.ServicioCursos;
import AccesoDatos.ServicioProfesores;
import AccesoDatos.ServicioUsuarios;
import LogicaNegocio.Alumno;
import LogicaNegocio.Carrera;
import LogicaNegocio.Curso;
import LogicaNegocio.Profesor;
import LogicaNegocio.Usuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adriana Herrera
 */
public class Control {
    
    private ServicioCarreras sc;
    private ServicioCursos scc;
    private ServicioAlumnos sa;
    private ServicioProfesores sp;
    private ServicioUsuarios su;
    
    // Preguntar sobre instancia unica
    private static Control uniqueInstance;
    
    public static Control instance()
    {
        if (uniqueInstance == null)
        {
            uniqueInstance = new Control();
        }
        return uniqueInstance;
    }
    
    // Constructor
    public Control(){
        sc = new ServicioCarreras();
        scc = new ServicioCursos();
        sa = new ServicioAlumnos();
        sp = new ServicioProfesores();
        su = new ServicioUsuarios();
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// CARRERAS /////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public List<Carrera> opcionesCarreras(String op2) throws GlobalException, NoDataException{
        return sc.listarCarreras();
    }
    
    public void opcionesCarreras(String op2, Carrera carrera) throws GlobalException, NoDataException{
        switch(op2){
            case "AGREGAR":
                sc.insertarCarreras(carrera);
            break;
            case "MODIFICAR":
                sc.modificarCarreras(carrera);
            break;
        }
    }
    
    public List<Carrera> opcionesCarreras(String op2, String codigo) throws GlobalException, NoDataException{
        
        List<Carrera> carrera = new ArrayList();
        
        switch(op2){
            case "BUSCAR":
                carrera = sc.buscarCarreras(codigo);
            break;
            case "ELIMINAR":
                sc.eliminarCarreras(codigo);
            break;
        }
        return carrera;
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// CURSO ////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public List<Curso> opcionesCursos(String op2) throws GlobalException, NoDataException, GlobalException, GlobalException, GlobalException{
        return scc.listarCursos();
    }
    
    public void opcionesCursos(String op2, Curso curso) throws GlobalException, NoDataException{
        switch(op2){
            case "AGREGAR":
                scc.insertarCursos(curso);
            break;
            case "MODIFICAR":
                scc.modificarCursos(curso);
            break;
        }
    }
    
    public List<Curso> opcionesCursos(String op2, String codigo) throws GlobalException, NoDataException{
        
        List<Curso> curso = new ArrayList();
                
        switch(op2){
            case "BUSCAR":
                curso = scc.buscarCursos(codigo);
            break;
            case "BUSCARPORCARRERA":
                curso = scc.buscarCursosPorCarrera(codigo);
            break;
            case "ELIMINAR":
                scc.eliminarCursos(codigo);
            break;
        }
        
        return curso;
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// ALUMNOS //////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public List<Alumno> opcionesAlumnos(String op2) throws GlobalException, NoDataException{
        return sa.listarAlumnos();
    }
    
    public void opcionesAlumnos(String op2, Alumno alumno) throws GlobalException, NoDataException{
        switch(op2){
            case "AGREGAR":
                sa.insertarAlumnos(alumno);
            break;
            case "MODIFICAR":
                sa.modificarAlumnos(alumno);
            break;
        }
    }
    
    public List<Alumno> opcionesAlumnos(String op2, String codigo) throws GlobalException, NoDataException{
        
        List<Alumno> alumno = new ArrayList();
                
        switch(op2){
            case "BUSCAR":
                alumno = sa.buscarAlumnos(codigo);
            break;
            case "ELIMINAR":
                sa.eliminarAlumnos(codigo);
            break;
        }
        return alumno;
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// PROFESORES ///////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public List<Profesor> opcionesProfesores(String op2) throws GlobalException, NoDataException{
        return sp.listarProfesores();
    }
    
    public void opcionesProfesores(String op2, Profesor profesor) throws GlobalException, NoDataException{
        switch(op2){
            case "AGREGAR":
                sp.insertarProfesores(profesor);
            break;
            case "MODIFICAR":
                sp.modificarProfesores(profesor);
            break;
        }
    }
    
    public List<Profesor> opcionesProfesores(String op2, String codigo) throws GlobalException, NoDataException{
        
        List<Profesor> profesor = new ArrayList();
                
        switch(op2){
            case "BUSCAR":
                profesor = sp.buscarProfesores(codigo);
            break;
            case "ELIMINAR":
                sp.eliminarProfesores(codigo);
            break;
        }
        return profesor;
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// USUARIOS ///////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public List<Usuario> opcionesUsuarios(String op2, String codigo) throws GlobalException, NoDataException{
        
        List<Usuario> usuario = new ArrayList();
                
        switch(op2){
            case "BUSCAR":
                su.buscarUsuarios(codigo);
            break;
            case "ELIMINAR":
                //
            break;
        }
        return usuario;
    }
    
    public List<Usuario> opcionesUsuarios(String op2) throws GlobalException, NoDataException{
        return su.listarUsuarios();
    }
}
