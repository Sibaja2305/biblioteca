/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import clases.LogBookLoans;

/**
 * What this class does is not an element of the node class with the data from
 * the LogBookLoans class and a following node to create the linked list
 *
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Diego Herrera Lopez
 * @author Jonathan Alfaro Herrera
 */
public class Node {

    public LogBookLoans dato;
    public Node sig;

    public Node(LogBookLoans datos) {
        this.dato = datos;
        this.sig = null;
    }
}
