import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "PageViewCounter", urlPatterns = "/page-view-count")
public class PageViewCounterServlet extends HttpServlet{

    int pageViewCount;

    public void init() {
        pageViewCount = 0;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String reset = req.getParameter("reset");
        String youVisited = "You visited my page:";
        resp.setContentType("text/html");
        pageViewCount++;
        PrintWriter out = resp.getWriter();
        if (reset != null){
            init();
            out.println("<h1>View count reset</h1>");
        } else {
            out.print("<h2>" + youVisited + "<h2>" + "<h2>" + pageViewCount + "</h2>" + "<h2>times!</h2>");
        }
    }
}

