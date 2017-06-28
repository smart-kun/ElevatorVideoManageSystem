package seu.automation.domain;

/**
 * Created by zangkun on 2017/6/16.
 */
public class Role {
    private Long role_id; //编号
    private String roleName; //角色标识 程序中判断使用,如"admin"
    private String description; //角色描述,UI界面显示使用
    private String updatetime;

    public Long getRole_id() {
        return role_id;
    }

    public void setRole_id(Long role_id) {
        this.role_id = role_id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }
}
