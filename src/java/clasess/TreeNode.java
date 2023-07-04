/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.util.ArrayList;
import clases.LogBookLoans;

/**
 *
 * @author Hp EliteBook
 */
public class TreeNode {

    LogBookLoans datum;

    TreeNode li;
    TreeNode ld;

    public TreeNode(LogBookLoans datums) {
        this.datum = datums;
        li = null;
        ld = null;
    }

    public synchronized void insert(LogBookLoans list) {

        if (list.getId() < datum.getId()) {
            if (li == null) {
                li = new TreeNode(list);
                System.out.println(list + " Insertado a la izquierda..." + datum);
            } else {
                li.insert(list);
            }
        }
        if (list.getId() > datum.getId()) {
            if (ld == null) {
                ld = new TreeNode(list);
                System.out.println(list + " Insertado a la derecha..." + datum);
            } else {
                ld.insert(list);
            }
        }

    }
   

}
