package seu.automation.utils;

import java.util.UUID;

/**
 * Created by zangkun on 2017/4/23.
 */
public class WebUtils {

    public static String makeID(){
        return UUID.randomUUID().toString();
    }

}
