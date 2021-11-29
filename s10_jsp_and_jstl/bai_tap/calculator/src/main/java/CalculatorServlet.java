import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"/calculator_servlet"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String numberOne = request.getParameter("numberOne");
        String numberTwo = request.getParameter("numberTwo");
        String operator = request.getParameter("operator");

        try {


            if (operator.equals("sum")) {
                double sum = Double.parseDouble(numberOne) + Double.parseDouble(numberTwo);
                System.out.println("Tổng là ");
                request.setAttribute("result", sum);
                request.getRequestDispatcher("display.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        try {
            if (operator.equals("sub")) {
                double sub = Double.parseDouble(numberOne) - Double.parseDouble(numberTwo);
                request.setAttribute("result", sub);
                request.getRequestDispatcher("display.jsp").forward(request, response);
            }
        }catch (Exception e){
            System.out.println(e);
        }
        if (operator.equals("core")) {
            double core = Double.parseDouble(numberOne) * Double.parseDouble(numberTwo);
            request.setAttribute("result", core);
            request.getRequestDispatcher("display.jsp").forward(request, response);
        }
        try {
            if (operator.equals("div")) {
                double div = (Double.parseDouble(numberOne)) / (Double.parseDouble(numberTwo));
                request.setAttribute("result", div);
                request.getRequestDispatcher("display.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
