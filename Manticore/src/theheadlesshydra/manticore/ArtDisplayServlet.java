package theheadlesshydra.manticore;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 * Display servlet that will arrange any special display parameters
 * and display the art page. 
 * @author Serj Kazar
 *
 */
@SuppressWarnings("serial")
public class ArtDisplayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//System.out.println("Display Get");
    	
    	// Obsolete code kept for potential benefit. 
    	/*
    	// Get data
    	String name = Gallery.types.getGalleryName();
        String description = Gallery.types.getGalleryDescription(); 
    	
    	
    	Map<String, String> messages = new HashMap<String, String>();
        request.setAttribute("messages", messages);

        // Set the gallery name
        messages.put("gallery", name);
        request.setAttribute("gallery", name);
        
        // Set the gallery description
        messages.put("description", description);
        request.setAttribute("description", description);
        */
    	
        // Forward to display
        request.getRequestDispatcher("art.jsp").forward(request, response);
    }

}