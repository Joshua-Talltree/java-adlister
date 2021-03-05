import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "WhatDidYouSayServlet", urlPatterns = "/what-did-you-say")
public class WhatDidYouSayServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("codeup");
        int count = 0;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        if (name != null) {
            out.printf("<h1>Hello %s </h1>", name);
        } else {
            out.println("<h1>Hello, World</h1>");
        }
    }
}
