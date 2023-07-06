/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.util.ArrayList;
import clases.ProjectionKit;
import java.util.Arrays;
import java.util.Collections;

/**
 * Class to search for a position
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class Ordering {

    /**
     * This method orders the "Arraylist" that arrives as a parameter to then
     * search for a specific position using "binarySearch"
     *
     * @param code code with which to do the search
     * @param search Arraylist in which the search is going to be done
     * @return
     */
    public int order(String code, ArrayList<ProjectionKit> search) {
        Collections.sort(search, new CodeComparator());
        System.out.println("datosOrdenados" + search.size());
        System.out.println("datosOrdenados" + search);
        int x = Collections.binarySearch(search, new ProjectionKit(code), new CodeComparator());
        System.out.println("quien es x " + code);
        System.out.println(x);
        if (x == 0) {
            System.out.println("usuario" + code);
        } else {
            System.out.println("no existe");
        }
        return x;

    }
}
