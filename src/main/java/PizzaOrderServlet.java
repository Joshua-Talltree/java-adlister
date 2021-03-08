import org.w3c.dom.ls.LSOutput;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String crust = request.getParameter("crust");
        request.setAttribute("crust", crust);
        System.out.println(crust);
        String sauce = request.getParameter("sauce");
        request.setAttribute("sauce", sauce);
        System.out.println(sauce);
        String size = request.getParameter("size");
        request.setAttribute("size", size);
        System.out.println(size);
        String pepperoni = request.getParameter("pepperoni");
        request.setAttribute("pepperoni", pepperoni);
        System.out.println(pepperoni);
        String sausage = request.getParameter("sausage");
        request.setAttribute("sausage", sausage);
        System.out.println(sausage);
        String groundbeef = request.getParameter("groundbeef");
        request.setAttribute("groundbeef", groundbeef);
        System.out.println(groundbeef);
        String mushrooms = request.getParameter("mushrooms");
        request.setAttribute("mushrooms", mushrooms);
        System.out.println(mushrooms);
        String steak = request.getParameter("steak");
        request.setAttribute("steak", steak);
        System.out.println(steak);
        String bellpepper = request.getParameter("bellpepper");
        request.setAttribute("bellpepper", bellpepper);
        System.out.println(bellpepper);
        String onions = request.getParameter("onions");
        request.setAttribute("onions", onions);
        System.out.println(onions);
        String olives = request.getParameter("olives");
        request.setAttribute("olives", olives);
        System.out.println(olives);
        String tomatoes = request.getParameter("tomatoes");
        request.setAttribute("tomatoes", tomatoes);
        System.out.println(tomatoes);
        String chicken = request.getParameter("chicken");
        request.setAttribute("chicken", chicken);
        System.out.println(chicken);
        request.getRequestDispatcher("pizza-order.jsp").forward(request, response);
    }

}
