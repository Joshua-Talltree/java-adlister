import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {

    int pageViewCount;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String youVisited = "You visited my page:";
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        pageViewCount++;
        if (name != null) {
            pageViewCount = 0;
            out.printf("<h1>Hello %s </h1>", name);
        } else {
            out.println("<h1>Hello, World</h1>");
        }
        out.print("<h2>" + youVisited + "<h2>" + "<h2>" + pageViewCount + "</h2>" + "<h2>times!</h2>");
    }
}