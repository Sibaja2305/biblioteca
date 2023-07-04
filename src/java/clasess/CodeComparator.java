/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import clases.ProjectionKit;
import java.util.Comparator;

/**
 *
 * @author Hp EliteBook
 */
public class CodeComparator implements Comparator<ProjectionKit> {

    @Override
    public int compare(ProjectionKit activoa, ProjectionKit activob) {
        
        return activoa.getCode().compareToIgnoreCase(activob.getCode());
    }
    
}
