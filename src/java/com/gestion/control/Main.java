/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gestion.control;

/**
 *
 * @author Adriana Herrera
 */
public class Main {
    public static Control principal; 
    
    public Main(){
        principal = Control.instance(); 
    }
}
