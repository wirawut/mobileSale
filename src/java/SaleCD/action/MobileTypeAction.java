package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.MobileTypeModel;
import java.util.List;

public class MobileTypeAction extends IndexAction {

    private List mobileTypeList;
    private List manageGeneralList;
    private MobileTypeModel mobileTypeModel;
    private ManageGeneralModel manageGeneralModel;

    public MobileTypeAction() {
        mobileTypeModel = new MobileTypeModel();
        manageGeneralModel = new ManageGeneralModel();
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
}
