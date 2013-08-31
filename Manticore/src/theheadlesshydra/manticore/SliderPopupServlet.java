package theheadlesshydra.manticore;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SliderPopupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Preprocess request: we actually don't need to do any business stuff, so just display JSP.
        request.getRequestDispatcher("art.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Postprocess request: gather and validate submitted data and display result in same JSP.

        // Prepare messages.
        Map<String, String> messages = new HashMap<String, String>();
        request.setAttribute("messages", messages);

        // Set the gallery name
        String name = request.getParameter("gallery");
        messages.put("gallery", name);
        request.setAttribute("gallery", name);
        
        // Set the gallery description
        String description = request.getParameter("description");
        messages.put("description", description);
        request.setAttribute("description", description);
        

        request.getRequestDispatcher("art.jsp").forward(request, response);
    }
}