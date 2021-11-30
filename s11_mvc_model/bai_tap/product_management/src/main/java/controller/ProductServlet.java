package controller;

import model.Product;
import service.IProductService;
import service.impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private IProductService iProductService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
             case "create":
      goPageCreate(request,response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "view":
                break;
            default:
                listProduct(request, response);
                break;
        }
    }

    private void goPageCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/create.jsp").forward(request,response);
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = this.iProductService.findAll();
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request,response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");
        Product product = new Product(id,name,price,description,producer);
        boolean isCreate = iProductService.saveProduct(product);
        if(isCreate){

        }else {

        }

    }
}
