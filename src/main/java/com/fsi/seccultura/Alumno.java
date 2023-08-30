package com.fsi.seccultura;


import java.io.Serializable;
import java.sql.PreparedStatement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author troll
 */
public class Alumno implements Serializable{
    String codigo, nombre,carrera,edad,creditos,estatus,sexo;

    public Alumno(String codigo, String nombre, String carrera, String edad, String creditos, String estatus, String sexo) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.carrera = carrera;
        this.edad = edad;
        this.creditos = creditos;
        this.estatus = estatus;
        this.sexo = sexo;
    }
    public int insertar(Conexion cnx){
        try {
            String sql = "INSERT INTO alumnos VALUES(?,?,?,?,?,?,?)";
            PreparedStatement ps = cnx.con.prepareStatement(sql);
            ps.setString(1, codigo);
            ps.setString(2, nombre);
            ps.setString(3, carrera);
            ps.setString(4, edad);
            ps.setString(5, creditos);
            ps.setString(6, estatus);
            ps.setString(7, sexo);
            int resp = ps.executeUpdate();
            return resp;
        }catch (Exception e){
            System.out.println("Error: "+e.getMessage());
            return 0;
        }
        
    }
}
