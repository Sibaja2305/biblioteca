/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package files;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ucr
 */
public class JavaFiles {

    public Map<String, String> getUser() {
        Map<String, String> users = new HashMap<>();
        users.put("usuario1@example.com", "contraseña1");
        users.put("usuario2@example.com", "contraseña2");
        users.put("pepito@example.com", "pepito");
        return users;
    }

}
