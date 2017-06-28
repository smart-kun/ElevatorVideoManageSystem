package seu.automation.web;

import seu.automation.domain.User;
import seu.automation.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by zangkun on 2017/6/16.
 */
@WebServlet(name = "UserDisplayServlet")
public class UserDisplayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService service = new UserService();
        List<User> userList = service.userDisplay();
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("/WEB-INF/jsp/user/user.jsp").forward(request,response);
    }
}
