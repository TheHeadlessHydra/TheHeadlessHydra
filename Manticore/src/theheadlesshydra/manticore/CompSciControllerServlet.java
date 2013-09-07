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
 * @author The Headless Hydra
 *
 */
@SuppressWarnings("serial")
public class CompSciControllerServlet extends HttpServlet {
	
	public CompSciControllerServlet(){
		super();
	}
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   	
    	// Forward to view
    	request.getRequestDispatcher("compsci.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to display 
        response.sendRedirect("compsci");
    }
}