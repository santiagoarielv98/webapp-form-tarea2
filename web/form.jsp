<%--
  Created by IntelliJ IDEA.
  User: santi
  Date: 14/1/2024
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Map" %>

<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
    String mensaje = (String) request.getAttribute("mensaje");

    String nombre = null;
    String precio = null;
    String fabricante = null;

    boolean hayErrores = errores != null && !errores.isEmpty();

    if (hayErrores) {
        nombre = errores.get("nombre");
        precio = errores.get("precio");
        fabricante = errores.get("fabricante");
    }
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SV | Formulario de registro producto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        html, body {
            height: 100%;
        }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center container">
<main class="m-auto">
    <div class="card" style="width: 300px;">
        <div class="card-header">
            <h4 class="card-title">Registrar Producto</h4>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/crear"
                  class="needs-validation<%= hayErrores ? " was-validated" : "" %>" method="post"
                  novalidate>
                <div class="mb-3">
                    <label for="inputNombre" class="form-label">Nombre del producto</label>
                    <input type="text" class="form-control" id="inputNombre" name="nombre"
                           placeholder="Nombre del Producto" required aria-describedby="nombreError">
                    <span id="nombreError" class="invalid-feedback"><%= nombre != null ? nombre : "" %></span>
                </div>
                <div class="mb-3">
                    <label for="inputPrecio" class="form-label">Precio</label>
                    <input type="number" class="form-control" id="inputPrecio" name="precio" placeholder="Precio"
                           required step="1" aria-describedby="precioError">
                    <span id="precioError" class="invalid-feedback"><%= precio != null ? precio : ""%></span>
                </div>
                <div class="mb-3">
                    <label for="inputFabricante" class="form-label">Fabricante</label>
                    <input type="text" class="form-control" id="inputFabricante" name="fabricante"
                           placeholder="Fabricante" required minlength="4" maxlength="10"
                           aria-describedby="fabricanteError">
                    <span id="fabricanteError"
                          class="invalid-feedback"><%= fabricante != null ? fabricante : ""%></span>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</main>
<% if (mensaje != null) { %>
<div class="alert alert-success alert-dismissible fade show position-fixed bottom-0 end-0 m-3" role="alert">
    <strong><%= mensaje %>
    </strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>