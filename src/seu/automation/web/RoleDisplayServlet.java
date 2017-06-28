package seu.automation.web;

import seu.automation.domain.Role;
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
@WebServlet(name = "RoleDisplayServlet")
public class RoleDisplayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        List<Role> roleList = userService.roleDisplay();
        request.setAttribute("roleList",roleList);
        request.getRequestDispatcher("/WEB-INF/jsp/role/role.jsp").forward(request,response);
    }
}
