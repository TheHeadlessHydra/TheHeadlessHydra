package theheadlesshydra.manticore;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;


/**
 * Controller used in the MVC POST-REDIRECT-GET system.
 * Send a form to be handled to this controller first,
 * do business here and maintain all data, then
 * it will then be passed along to the ArtDisplayServlet
 * for display.
 * @author Serj Kazar
 *
 */
@SuppressWarnings("serial")
public class ArtControllerServlet extends HttpServlet {
	
	public ArtControllerServlet(){
		super();
	}
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//System.out.println("Controller Get");
    	
    	// Forward to view
    	request.getRequestDispatcher("art.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//System.out.println("Controller Post");

    	// Obsolete code kept for potential benefit. 
    	/*
        // Get the gallery name
        String name = request.getParameter("gallery");
        
        // Get the gallery description
        String description = request.getParameter("description");
       
        // Set data
        Gallery.types.setGalleryName(name);
        Gallery.types.setGalleryDescription(description); 
    	 */
    	
        // Redirect to display 
        response.sendRedirect("art");
    }
}