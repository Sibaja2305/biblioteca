/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.util.ArrayList;
import clases.LogBookLoans;
import clases.Speaker;

/**
 *
 * @author Hp EliteBook
 */
public class TreeNode {

    Speaker datum;

    TreeNode li;
    TreeNode ld;

    public TreeNode(Speaker datums) {
        this.datum = datums;
        li = null;
        ld = null;
    }

    public synchronized void insert(Speaker list) {
String datos1=list.getCode();
String datos2=datum.getCode();
        if (datos1.compareToIgnoreCase(datos2)<0 ) {
            if (li == null) {
                li = new TreeNode(list);
                System.out.println(list + " Insertado a la izquierda..." + datum);
            } else {
                li.insert(list);
            }
        }
        if (datos1.compareToIgnoreCase(datos2)>0 ) {
            if (ld == null) {
                ld = new TreeNode(list);
                System.out.println(list + " Insertado a la derecha..." + datum);
            } else {
                ld.insert(list);
            }
        }

    }
   

}
