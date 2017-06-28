package seu.automation.web;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import seu.automation.domain.State;
import seu.automation.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by zangkun on 2017/4/24.
 */
@WebServlet(name = "DisplayStateServlet")
public class DisplayStateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //json在这里存放的是数组信息
        JSONObject json=new JSONObject();
        JSONArray array=new JSONArray();

        //两个数据
        JSONObject temp1=new JSONObject();
        JSONObject temp2=new JSONObject();

        UserService service=new UserService();
        State state=service.findState();
        String[] states = state.getTempData().split(",");
        //System.out.println(states.length);
        try {
            //第一个name和sex
            for(int i=0; i<19;i++)
            {
                temp1.put("v"+String.valueOf(i+1), states[i].split(":")[1]);
                //temp2.put(String.valueOf(i), states[i].split(":")[1]);
                //System.out.println(states[i].split(":")[0]+states[i].split(":")[1]);
            }
            temp1.put("v20", state.getTime());
            array.put(0,temp1);
            //array.put(0,temp2);

            //添加到json中
            json.put("people", array);
        } catch (JSONException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        //向前台的页面输出结果
        PrintWriter out=response.getWriter();
        out.println(json);
        out.close();
    }

}
