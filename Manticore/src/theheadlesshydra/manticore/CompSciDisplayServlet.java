package theheadlesshydra.manticore;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 * Display servlet that will arrange any special display parameters
 * and display the computer science page. 
 * @author The Headless Hydra
 *
 */
@SuppressWarnings("serial")
public class CompSciDisplayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to display
        request.getRequestDispatcher("compsci.jsp").forward(request, response);
    }

}