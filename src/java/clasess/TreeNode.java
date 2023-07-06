/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.util.ArrayList;
import clases.LogBookLoans;
import clases.Speaker;

/**
 * The `TreeNode` class represents a node in a binary tree. Each node stores a
 * `Speaker` object and has references to its left child and right child nodes.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class TreeNode {

    Speaker datum;

    TreeNode li;
    TreeNode ld;

    /**
     * Constructor for the `TreeNode` class. Initializes the node with the given
     * `Speaker` object.
     *
     * @param datums The `Speaker` object to store in the node.
     */
    public TreeNode(Speaker datums) {
        this.datum = datums;
        li = null;
        ld = null;
    }

    /**
     * The `Speaker` object to store in the node. The object is inserted
     * based on its ID value.
     *
     * @param list The `Speaker` object to insert into the tree.
     */
    public synchronized void insert(Speaker list) {
        String datos1 = list.getCode();
        String datos2 = datum.getCode();
        if (datos1.compareToIgnoreCase(datos2) < 0) {
            if (li == null) {
                li = new TreeNode(list);
                System.out.println(list + " Insertado a la izquierda..." + datum);
            } else {
                li.insert(list);
            }
        }
        if (datos1.compareToIgnoreCase(datos2) > 0) {
            if (ld == null) {
                ld = new TreeNode(list);
                System.out.println(list + " Insertado a la derecha..." + datum);
            } else {
                ld.insert(list);
            }
        }

    }

}
