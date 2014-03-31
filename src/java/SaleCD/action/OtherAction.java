package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.OtherModel;
import SaleCD.model.OtherTypeModel;
import SaleCD.model.UnitModel;
import com.opensymphony.xwork2.inject.Factory;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

public class OtherAction extends IndexAction {

    private int other_id;
    private OtherModel otherModel;
    private List otherList;
    private ManageGeneralModel manageGeneralModel;
    private List manageGeneralList;
    private UnitModel unitModel;
    private List unitShowList;
    private OtherTypeModel otherTypeModel;
    private List otherTypeShowList;

    public OtherAction() {
        otherModel = new OtherModel();
        manageGeneralModel = new ManageGeneralModel();
        unitModel = new UnitModel();
        otherTypeModel = new OtherTypeModel();
        otherTypeShowList = new ArrayList();
        unitShowList = new ArrayList();

    }

    public List getOtherList() {
        return otherList;
    }

    public void setOtherList(List otherList) {
        this.otherList = otherList;
    }

    public List getUnitShowList() {
        return unitShowList;
    }

    public void setUnitShowList(List unitShowList) {
        this.unitShowList = unitShowList;
    }

    public List getOtherTypeShowList() {
        return otherTypeShowList;
    }

    public void setOtherTypeShowList(List otherTypeShowList) {
        this.otherTypeShowList = otherTypeShowList;
    }

    public int geOther_id() {
        return other_id;
    }

    public void setOther_id(int other_id) {
        this.other_id = other_id;
    }

    public OtherModel getOtherModel() {
        return otherModel;
    }

    public void setOtherModel(OtherModel otherModel) {
        this.otherModel = otherModel;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public UnitModel getUnitModel() {
        return unitModel;
    }

    public void setUnitModel(UnitModel unitModel) {
        this.unitModel = unitModel;
    }

    public OtherTypeModel getOtherTypeModel() {
        return otherTypeModel;
    }

    public void setOtherTypeModel(OtherTypeModel otherTypeModel) {
        this.otherTypeModel = otherTypeModel;
    }

    public String index() {
        //เมื่อกดปุ่ม เพิ่ม ให้ดึงข้อมูลมาใส่dropdownlist ทันที
        List otherType = otherTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < otherType.size(); i++) {
            otherTypeShowList.add(otherType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        otherList = otherModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        //ดึงข้อมูลมาใส่ dropdownเมื่อกดปุ่มแก้ไข
        List otherType = otherTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < otherType.size(); i++) {
            otherTypeShowList.add(otherType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        otherModel = otherModel.find(other_id);
        otherList = otherModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        otherModel.delete(other_id);
        otherList = otherModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        other_id = otherModel.getOther_id();
        if (other_id == 0) {
            otherModel.setOtherTypeModel(otherTypeModel);
            otherModel.setUnitModel(unitModel);
            otherModel.save(otherModel);
        } else {
            otherModel.setOtherTypeModel(otherTypeModel);
            otherModel.setUnitModel(unitModel);
            otherModel.update(otherModel, other_id);
            setOther_id(0);
        }
        otherList = otherModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
