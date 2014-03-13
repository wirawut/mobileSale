package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.MobileTypeModel;
import java.util.Date;
import java.util.List;

public class MobileTypeAction extends IndexAction {

    private int mobile_type_id;
    private List mobileTypeList;
    private List manageGeneralList;
    private MobileTypeModel mobileTypeModel;
    private ManageGeneralModel manageGeneralModel;

    public MobileTypeAction() {
        mobileTypeModel = new MobileTypeModel();
        manageGeneralModel = new ManageGeneralModel();
    }

    public int getMobile_type_id() {
        return mobile_type_id;
    }

    public void setMobile_type_id(int mobile_type_id) {
        this.mobile_type_id = mobile_type_id;
    }

    public List getMobileTypeList() {
        return mobileTypeList;
    }

    public void setMobileTypeList(List mobileTypeList) {
        this.mobileTypeList = mobileTypeList;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGenerList(List manageGenerList) {
        this.manageGeneralList = manageGenerList;
    }

    public MobileTypeModel getMobileTypeModel() {
        return mobileTypeModel;
    }

    public void setMobileTypeModel(MobileTypeModel mobileTypeModel) {
        this.mobileTypeModel = mobileTypeModel;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public String index() {
        mobileTypeList = mobileTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        mobileTypeModel = mobileTypeModel.find(mobile_type_id);
        manageGeneralList = manageGeneralModel.list();
        mobileTypeList = mobileTypeModel.list();
        return "SUCCESS";
    }

    public String save() {
        Date date = new Date();
        mobile_type_id = mobileTypeModel.getMobile_type_id();
        if (mobile_type_id == 0) {
            mobileTypeModel.setDate(date);
            mobileTypeModel.save(mobileTypeModel);
        } else {
            mobileTypeModel.setDate(date);
            mobileTypeModel.update(mobileTypeModel, mobile_type_id);
            setMobile_type_id(0);
        }
        manageGeneralList = manageGeneralModel.list();
        mobileTypeList = mobileTypeModel.list();
        return "SUCCESS";
    }

    public String delete() {
        mobileTypeModel.delete(mobile_type_id);
        manageGeneralList = manageGeneralModel.list();
        mobileTypeList = mobileTypeModel.list();
        return "SUCCESS";
    }
}
