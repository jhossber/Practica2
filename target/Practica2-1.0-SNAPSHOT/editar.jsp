<%@page import="com.emergentes.modelo.Tarea"%>
<%
    Tarea item = (Tarea) request.getAttribute("miTarea");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

        <title>Practica 2 JBYCH</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center"><%= (item.getId() == 0) ? "Nuevo Registro" : "Editar Registro"%></h1>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="MainController" method="POST">
                        <input type="hidden" name="id" value="<%= item.getId()%>">
                        <div class="form-group">
                            <label for="des">Tarea</label>
                            <input type="text" class="form-control" id="des" name="tareas" value="<%= item.getTareas()%>">
                        </div>
                        <div class="form-group">
                            <label for="pri">Prioridad</label>
                            <select class="custom-select" id="pri" name="prioridad" required>
                                <option disabled value="">Seleccionar</option>                               
                                <option value="Alta" <%= (item.getPrioridad() == "Alta")?"selected":item.getPrioridad()%> >Alta</option>
                                <option value="Media" <%=(item.getPrioridad() == "Media")?"selected":item.getPrioridad()%> >Media</option>
                                <option value="Baja" <%=(item.getPrioridad() == "Baja")?"selected":item.getPrioridad()%> >Baja</option>                                
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="pre">Completado</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="completado" id="exampleRadios1" value="1" <%=(item.getCompletado()== 1)?"checked":1%> >
                                <label class="form-check-label" for="exampleRadios1">
                                    Completado
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="completado" id="exampleRadios2" value="2" <%=(item.getCompletado()== 2)?"checked":2%>>
                                <label class="form-check-label" for="exampleRadios2">
                                    Pendiente
                                </label>
                            </div>                            
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>               
                    </form>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    </body>
</html>
