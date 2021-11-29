package controller;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Mai Văn Hoàn","26-08-2002","Quảng Nam","https://i.pinimg.com/originals/2d/b2/a7/2db2a71bd6b68aadbd389cbeebb5d907.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam","26-08-2002","Quảng Nam","https://thuthuatnhanh.com/wp-content/uploads/2020/02/anh-trai-dep-han-quoc-song-joong-ki.jpg"));
        customerList.add(new Customer("Nguyễn Thai Hòa","26-08-2002","Quảng Nam","https://kenh14cdn.com/thumb_w/660/2019/6/16/photo-1-1560703887764836946494.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa","26-08-2002","Quảng Nam","https://thuthuatnhanh.com/wp-content/uploads/2020/02/anh-trai-dep-han-quoc-song-joong-ki.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi","26-08-2002","Quảng Nam","https://luv.vn/wp-content/uploads/2021/09/hinh-anh-nu-sinh-dep-nhat-2.jpg"));

        request.setAttribute("customerListServlet",customerList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
