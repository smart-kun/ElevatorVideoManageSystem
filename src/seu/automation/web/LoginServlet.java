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
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService service = new UserService();
        User user = service.userLogin(username, password);
        if(user==null){
            request.setAttribute("message", "用户名或密码不对！！");
            request.getRequestDispatcher("/WEB-INF/jsp/message.jsp").forward(request, response);
            return;
        }
/*        request.setAttribute("message", "登陆成功");
        request.getRequestDispatcher("/message.jsp").forward(request, response);*/
        request.getSession().setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request,response);
     /*   请求转发的过程中request方法不变，post方法转发后还是post方法*/
      /*  request.getRequestDispatcher("/WEB-INF/jsp/main.jsp").forward(request, response);*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
