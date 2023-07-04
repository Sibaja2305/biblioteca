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
 *
 * @author Hp EliteBook
 */
public class Ordering {
    public int ordenar (String code, ArrayList<ProjectionKit> buscar){
          Collections.sort(buscar,new CodeComparator());
          System.out.println("datosOrdenados" + buscar.size());
          System.out.println("datosOrdenados" + buscar);
        int x=  Collections.binarySearch(buscar, new ProjectionKit(code), new CodeComparator());
        System.out.println("quien es x "+ code);
          System.out.println(x);
          if (x==0) {
              System.out.println("usuario"+code);
        }else{
              System.out.println("no existe");
          }
        return x;
    
}
}
