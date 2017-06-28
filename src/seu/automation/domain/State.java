package seu.automation.domain;

/**
 * Created by zangkun on 2017/4/24.
 */
public class State {
    private String TaskListID;
    private String TempData;
    private String token;
    private String Time;

    public String getTaskListID() {
        return TaskListID;
    }

    public void setTaskListID(String taskListID) {
        TaskListID = taskListID;
    }

    public String getTempData() {
        return TempData;
    }

    public void setTempData(String tempData) {
        TempData = tempData;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }
}
