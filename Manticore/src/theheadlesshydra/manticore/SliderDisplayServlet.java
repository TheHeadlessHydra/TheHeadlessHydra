package theheadlesshydra.manticore;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SliderDisplayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("IN GET DISPLAY");
    	
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
        
        // Forward to display
        request.getRequestDispatcher("art.jsp").forward(request, response);
    }

}