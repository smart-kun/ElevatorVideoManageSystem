package seu.automation.service;

import seu.automation.dao.StateDao;
import seu.automation.dao.UserDao;
import seu.automation.domain.*;
import seu.automation.utils.DaoFactory;

import java.util.List;

/**
 * Created by zangkun on 2017/4/23.
 */
public class UserService {
    private UserDao udao = DaoFactory.getInstance().createDao("seu.automation.dao.UserDao", UserDao.class);
    private StateDao sdao=DaoFactory.getInstance().createDao("seu.automation.dao.StateDao",StateDao.class);
    //注册用户
    public void registerUser(User user) {
        udao.add(user);
    }

    public User userLogin(String username,String password){
        return udao.find(username, password);
    }

    public State findState()
    {
        return sdao.find();
    }

    public void updateuser(User user) {
        udao.update(user);
    }
    public List<User> userDisplay()
    {
        //List<User> userList = udao.userDisplay();
        //System.out.println(userList.size());
        return udao.userDisplay();

    }
    public List<Role> roleDisplay()
    {
        return udao.roleDisplay();
    }
    public List<ElevatorUser> elevatorUserDisplay()
    {
        return sdao.elevatorUserDisplay();
    }
    public List<ElevatorProducer> elevatorProducerDisplay(){return sdao.elevatorProducerDisplay();}

}
