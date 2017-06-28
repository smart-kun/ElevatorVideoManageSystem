package seu.automation.web;

import seu.automation.domain.User;
import seu.automation.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zangkun on 2017/4/24.
 */
@WebServlet(name = "UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new User();

            user.setPassword(password);
            user.setUsername(username);
            user.setId(id);
            UserService service = new UserService();
            service.updateuser(user);
            request.setAttribute("message", "密码修改成功");

        }catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "密码修改失败");
        }
        request.getRequestDispatcher("/WEB-INF/jsp/message.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
