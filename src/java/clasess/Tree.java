/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;
import clases.LogBookLoans;
import java.util.ArrayList;

/**
 *
 * @author Hp EliteBook
 */
public class Tree {
    private TreeNode nodoar;

    public Tree() {
        nodoar = null;
    }

    public TreeNode retornaraiz() {
        return (nodoar);
    }

    public synchronized void insertarNodo(ArrayList<LogBookLoans> list) {
      
        for (LogBookLoans elemento : list) {
        if (nodoar == null) {
            nodoar = new TreeNode(elemento);
            System.out.println("\nInsertado en la Raiz..." + elemento);
        } else {
            nodoar.insert(elemento);
        }
    }
    }
      public synchronized void getInOrden(TreeNode tree) {
        if (tree.li != null) {
            getInOrden(tree.li);
        }

        System.out.print("\n" + tree.datum);

        if (tree.ld != null) {
            getInOrden(tree.ld);
        }
      }
      
}
