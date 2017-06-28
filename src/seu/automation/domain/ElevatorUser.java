package seu.automation.domain;

/**
 * Created by zangkun on 2017/6/16.
 */
public class ElevatorUser {
    private Long UnitID; //编号
    private String UnitName; //角色标识 程序中判断使用,如"admin"
    private String LinkMan; //角色描述,UI界面显示使用
    private String Address;
    private String TeleNumber;
    private String Longitude;
    private String Latitude;

    public Long getUnitID() {
        return UnitID;
    }

    public void setUnitID(Long unitID) {
        UnitID = unitID;
    }

    public String getUnitName() {
        return UnitName;
    }

    public void setUnitName(String unitName) {
        UnitName = unitName;
    }

    public String getLinkMan() {
        return LinkMan;
    }

    public void setLinkMan(String linkMan) {
        LinkMan = linkMan;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getTeleNumber() {
        return TeleNumber;
    }

    public void setTeleNumber(String teleNumber) {
        TeleNumber = teleNumber;
    }

    public String getLongitude() {
        return Longitude;
    }

    public void setLongitude(String longitude) {
        Longitude = longitude;
    }

    public String getLatitude() {
        return Latitude;
    }

    public void setLatitude(String latitude) {
        Latitude = latitude;
    }
}
