package seu.automation.utils;

/**
 * Created by zangkun on 2017/4/23.
 */
public class DaoFactory {
    private static final DaoFactory factory = new DaoFactory();
    private DaoFactory(){}

    public static DaoFactory getInstance(){
        return factory;
}

    public <T> T createDao(String className,Class<T> clazz){
        try{
            T t = (T) Class.forName(className).newInstance();
            return t;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
