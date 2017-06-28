package seu.automation.web;

import seu.automation.domain.State;
import seu.automation.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zangkun on 2017/5/16.
 */
@WebServlet(name = "MainServlet")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService service=new UserService();
        State state=service.findState();
        request.setAttribute("state",state);
        System.out.println("数据库操作完毕");
        request.getRequestDispatcher("/WEB-INF/jsp/main.jsp").forward(request,response);
    }
}
