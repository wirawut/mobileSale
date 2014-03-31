package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.MobileModel;
import SaleCD.model.MobileTypeModel;
import SaleCD.model.UnitModel;
import com.opensymphony.xwork2.inject.Factory;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

public class MobileAction extends IndexAction {

    private int mobile_id;
    private MobileModel mobileModel;
    private List mobileList;
    private ManageGeneralModel manageGeneralModel;
    private List manageGeneralList;
    private UnitModel unitModel;
    private List unitShowList;
    private MobileTypeModel mobileTypeModel;
    private List mobileTypeShowList;

    public MobileAction() {
        mobileModel = new MobileModel();
        manageGeneralModel = new ManageGeneralModel();
        unitModel = new UnitModel();
        mobileTypeModel = new MobileTypeModel();
        mobileTypeShowList = new ArrayList();
        unitShowList = new ArrayList();

//        unitShowList.add("ชิ้น");
//        unitShowList.add("อัน");
//
//        mobileTypeShowList.add("Nokia");
//        mobileTypeShowList.add("Samsung");
    }

    public List getMobileList() {
        return mobileList;
    }

    public void setMobileList(List mobileList) {
        this.mobileList = mobileList;
    }

    public List getUnitShowList() {
        return unitShowList;
    }

    public void setUnitShowList(List unitShowList) {
        this.unitShowList = unitShowList;
    }

    public List getMobileTypeShowList() {
        return mobileTypeShowList;
    }

    public void setMobileTypeShowList(List mobileTypeShowList) {
        this.mobileTypeShowList = mobileTypeShowList;
    }

    public int getMobile_id() {
        return mobile_id;
    }

    public void setMobile_id(int mobile_id) {
        this.mobile_id = mobile_id;
    }

    public MobileModel getMobileModel() {
        return mobileModel;
    }

    public void setMobileModel(MobileModel mobileModel) {
        this.mobileModel = mobileModel;
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

    public MobileTypeModel getMobileTypeModel() {
        return mobileTypeModel;
    }

    public void setMobileTypeModel(MobileTypeModel mobileTypeModel) {
        this.mobileTypeModel = mobileTypeModel;
    }

    public String index() {
        //เมื่อกดปุ่ม เพิ่ม ให้ดึงข้อมูลมาใส่dropdownlist ทันที
        List mobileType = mobileTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < mobileType.size(); i++) {
            mobileTypeShowList.add(mobileType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        mobileList = mobileModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        //ดึงข้อมูลมาใส่ dropdownเมื่อกดปุ่มแก้ไข
        List mobileType = mobileTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < mobileType.size(); i++) {
            mobileTypeShowList.add(mobileType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        mobileModel = mobileModel.find(mobile_id);
        mobileList = mobileModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        mobileModel.delete(mobile_id);
        mobileList = mobileModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        mobile_id = mobileModel.getMobile_id();
        if (mobile_id == 0) {
            mobileModel.setMobileTypeModel(mobileTypeModel);
            mobileModel.setUnitModel(unitModel);
            mobileModel.save(mobileModel);
        } else {
            mobileModel.setMobileTypeModel(mobileTypeModel);
            mobileModel.setUnitModel(unitModel);
            mobileModel.update(mobileModel, mobile_id);
            setMobile_id(0);
        }
        mobileList = mobileModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
