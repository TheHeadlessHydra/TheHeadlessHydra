package theheadlesshydra.manticore;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 * Controller used in the MVC POST-REDIRECT-GET system.
 * Send a form to be handled to this controller first,
 * do business here and maintain all data, then
 * it will then be passed along to the CompSciDisplayServlet
 * for display
 * @author Serj Kazar
 *
 */
public class HomeControllerServlet {
	
	public HomeControllerServlet(){
		super();
	}
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// Forward to view
    	request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to display 
        response.sendRedirect("home");
    }
}
