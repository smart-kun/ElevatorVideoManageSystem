package seu.automation.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import seu.automation.domain.ElevatorProducer;
import seu.automation.domain.ElevatorUser;
import seu.automation.domain.State;
import seu.automation.utils.JdbcUtils;

import java.util.List;

/**
 * Created by zangkun on 2017/4/24.
 */
public class StateDao {

    public State find() {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_tempdata where TaskListID=?";
            Object params[] ={"S-HT-2017-DT2"};
            State state=(State) runner.query(sql, params, new BeanHandler(State.class));
            return state;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
    public List<ElevatorUser> elevatorUserDisplay() {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_company";
            Object params[] ={};
            return (List<ElevatorUser>) runner.query(sql, params, new BeanListHandler(ElevatorUser.class));

        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
    public List<ElevatorProducer> elevatorProducerDisplay() {
        try{
            QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
            String sql = "select * from t_elevatortype";
            Object params[] ={};
            return (List<ElevatorProducer>) runner.query(sql, params, new BeanListHandler(ElevatorProducer.class));

        }catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

}
