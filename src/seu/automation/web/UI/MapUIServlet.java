package seu.automation.web.UI;

import seu.automation.domain.ElevatorUser;
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
@WebServlet(name = "MapUIServlet")
public class MapUIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService service = new UserService();
        List<ElevatorUser> elevatorUserList = service.elevatorUserDisplay();
        request.setAttribute("elevatorUserList",elevatorUserList);
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("username",user.getUsername());
        request.setAttribute("password",user.getPassword());
        request.getRequestDispatcher("/WEB-INF/jsp/elevatorusermap.jsp").forward(request,response);
    }
}
