import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Aquí puedes agregar tu lógica para verificar el email del usuario
        // Puedes usar bibliotecas externas o validar el formato del email manualmente

        // Ejemplo de verificación de email: verificar si contiene un '@'
        boolean isEmailValid = email != null && email.contains("@");

        if (isEmailValid) {
            // Email válido, redirigir al usuario a la página de inicio
            response.sendRedirect("index.jsp");
        } else {
            // Email inválido, mostrar mensaje de error
            request.setAttribute("error", "El correo electrónico es inválido");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
