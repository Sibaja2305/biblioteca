/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import clases.Speaker;
import java.util.ArrayList;

/**
 * The `Tree` class represents a binary tree that stores `LogBookLoans` objects.
 * It provides functionality for inserting nodes and traversing the tree in an
 * in-order manner.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class Tree {

    private TreeNode nodoar;

    /**
     * Default constructor for the `Tree` class. Initializes the root node to
     * null.
     */
    public Tree() {
        nodoar = null;
    }

    /**
     * Returns the root node of the tree.
     *
     * @return The root node of the tree.
     */
    public TreeNode retornaraiz() {
        return (nodoar);
    }

    /**
     * Inserts nodes into the tree based on the given list of `Speaker`.
     *
     * @param list The list of `Speaker` objects to insert into the tree.
     */
    public synchronized void insertarNodo(ArrayList<Speaker> list) {

        for (Speaker elemento : list) {
            if (nodoar == null) {
                nodoar = new TreeNode(elemento);
                System.out.println("\nInsertado en la Raiz..." + elemento);
            } else {
                nodoar.insert(elemento);
            }
        }
    }
    private ArrayList<Speaker> datos = new ArrayList<>();

    /**
     * Traverses the tree in an in-order manner and prints the nodes.
     *
     * @param tree The tree node to start the traversal from.
     */
    public synchronized void getInOrden(TreeNode tree) {
        if (tree.li != null) {
            getInOrden(tree.li);
        }

        System.out.print("\n" + tree.datum.getCode());
        datos.add(tree.datum);

        if (tree.ld != null) {
            getInOrden(tree.ld);
        }

    }

    /**
     * @return the datos
     */
    public ArrayList<Speaker> getDatos() {
        return datos;
    }

}
