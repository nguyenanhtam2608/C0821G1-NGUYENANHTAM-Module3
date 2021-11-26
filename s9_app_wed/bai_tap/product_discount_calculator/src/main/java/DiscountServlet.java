import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", urlPatterns = "/count")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String rate = request.getParameter("rate");
        String amount = request.getParameter("amount");

        double result = Double.parseDouble(rate) * Double.parseDouble(amount) * 0.01;// lượng chiếc khấu
        double amountRate = result + Double.parseDouble(amount);


        request.setAttribute("result", result);
        request.setAttribute("amountRate",amountRate);
        request.getRequestDispatcher("display.jsp").forward(request, response);// hiển thị cùng 1 trang
        request.getRequestDispatcher("display.jsp").forward(request, response);// hiển thị cùng 1 trang

    }
}
