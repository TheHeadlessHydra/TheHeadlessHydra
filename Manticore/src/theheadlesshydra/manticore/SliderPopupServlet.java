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

        String voganth = request.getParameter("gallary");
        response.setContentType("text/plain");
        response.getWriter().println("It is: "+voganth);
        messages.put("gallary", voganth);

        request.setAttribute("gallary", voganth);
		
        // Get and validate name.
        String name = request.getParameter("name");
        if (name == null || name.trim().isEmpty()) {
            messages.put("name", "Please enter name");
        } else if (!name.matches("\\p{Alnum}+")) {
            messages.put("name", "Please enter alphanumeric characters only");
        }

        // Get and validate age.
        String age = request.getParameter("age");
        if (age == null || age.trim().isEmpty()) {
            messages.put("age", "Please enter age");
        } else if (!age.matches("\\d+")) {
            messages.put("age", "Please enter digits only");
        }

        // No validation errors? Do the business job!
        if (messages.isEmpty()) {
            messages.put("success", String.format("Hello, your name is %s and your age is %s!", name, age));
        }
        
        request.setAttribute("TEST", "TEST");
        request.getRequestDispatcher("art.jsp").forward(request, response);
    }
}