package seu.automation.domain;

/**
 * Created by zangkun on 2017/6/16.
 */
public class ElevatorProducer {
    private Long TypeID; //编号
    private String ElevatorType; //角色标识 程序中判断使用,如"admin"
    private String Manufacturer; //角色描述,UI界面显示使用
    private String MaintainUnit;
    private String Carry;

    public Long getTypeID() {
        return TypeID;
    }

    public void setTypeID(Long typeID) {
        TypeID = typeID;
    }

    public String getElevatorType() {
        return ElevatorType;
    }

    public void setElevatorType(String elevatorType) {
        ElevatorType = elevatorType;
    }

    public String getManufacturer() {
        return Manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        Manufacturer = manufacturer;
    }

    public String getMaintainUnit() {
        return MaintainUnit;
    }

    public void setMaintainUnit(String maintainUnit) {
        MaintainUnit = maintainUnit;
    }

    public String getCarry() {
        return Carry;
    }

    public void setCarry(String carry) {
        Carry = carry;
    }
}
