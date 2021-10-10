package com.emergentes.modelo;

public class Tarea {
    private int id;
    private String tareas;
    private String prioridad;
    private int completado;

    public Tarea() {
        this.id = 0;
        this.tareas = "";
        this.prioridad = "";
        this.completado = 1;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTareas() {
        return tareas;
    }

    public void setTareas(String tareas) {
        this.tareas = tareas;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public int getCompletado() {
        return completado;
    }

    public void setCompletado(int completado) {
        this.completado = completado;
    }
    
    
}
