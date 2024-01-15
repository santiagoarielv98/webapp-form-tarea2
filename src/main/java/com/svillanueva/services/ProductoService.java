package com.svillanueva.services;

import com.svillanueva.models.Producto;

import java.util.*;

public interface ProductoService {

    List<Producto> listar();
    Optional<Producto> buscarProducto(String nombre);

}
