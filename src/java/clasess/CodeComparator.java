/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import clases.ProjectionKit;
import java.util.Comparator;

/**
 * This CodeComparator class implements the Comparator of the ProjectionKit
 * class what it does to compare a code with another code
 *
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Diego Herrera Lopez
 * @author Jonathan Alfaro Herrera
 */
public class CodeComparator implements Comparator<ProjectionKit> {

    @Override
    public int compare(ProjectionKit activoa, ProjectionKit activob) {

        return activoa.getCode().compareToIgnoreCase(activob.getCode());
    }

}
