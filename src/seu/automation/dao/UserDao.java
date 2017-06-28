package seu.automation.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import seu.automation.domain.ElevatorUser;
import seu.automation.domain.Role;
import seu.automation.domain.User;
import seu.automation.utils.JdbcUtils;

import java.util.List;

/**
 * Created by zangkun on 2017/4/23.
 */
public class UserDao {
    public void add(User user) {
        try {
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
        String sql = "insert into t_user(userName,passWord) values(?,?)";
        Object params[] = { user.getUsername(), user.getPassword()};
        runner.update(sql, params);
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
    }

    public User find(String username, String password) {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_user where userName=? and passWord=?";
            Object params[] ={username,password};
            return (User) runner.query(sql, params, new BeanHandler(User.class));
        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    public void update(User user) {
        try {
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "update user set username=?,password=? where id=?";
            Object params[] = { user.getUsername(), user.getPassword(),user.getId()};
            runner.update(sql, params);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public List<User> userDisplay() {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_user";
            Object params[] ={};
            return (List<User>) runner.query(sql, params, new BeanListHandler(User.class));

        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
    public List<Role> roleDisplay() {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_role";
            Object params[] ={};
            return (List<Role>) runner.query(sql, params, new BeanListHandler(Role.class));

        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }


}
