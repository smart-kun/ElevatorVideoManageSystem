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
 * Created by zangkun on 2017/4/23.
 */
@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try{
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new User();

            //user.setId(String.valueOf((int)(Math.random()*1000)));
            user.setPassword(password);
            user.setUsername(username);

            UserService service = new UserService();
            service.registerUser(user);
            request.setAttribute("message", "注册成功");

        }catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "注册失败");
        }
        request.getRequestDispatcher("/WEB-INF/jsp/message.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
