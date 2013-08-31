package theheadlesshydra.manticore;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import theheadlesshydra.manticore.Gallery;

@SuppressWarnings("serial")
public class SliderControllerServlet extends HttpServlet {
	
	public SliderControllerServlet(){
		super();
	}
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("IN GET");
    	
    	// Forward to view
    	request.getRequestDispatcher("art.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("IN POST");

        // Get the gallery name
        String name = request.getParameter("gallery");
        
        // Get the gallery description
        String description = request.getParameter("description");
       
        // Set data
        Gallery.types.setGalleryName(name);
        Gallery.types.setGalleryDescription(description); 

        // Redirect to display 
        response.sendRedirect("art");
    }
}