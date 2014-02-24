package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.OtherTypeModel;
import java.util.List;

public class OtherTypeAction extends IndexAction {

    private List otherTypeList;
    private List manageGeneralList;
    private OtherTypeModel otherTypeModel;
    private ManageGeneralModel manageGeneralModel;

    public OtherTypeAction() {
        otherTypeModel = new OtherTypeModel();
        manageGeneralModel = new ManageGeneralModel();
    }

    public List getOtherTypeList() {
        return otherTypeList;
    }

    public void setOtherTypeList(List otherTypeList) {
        this.otherTypeList = otherTypeList;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public OtherTypeModel getOtherTypeModel() {
        return otherTypeModel;
    }

    public void setOtherTypeModel(OtherTypeModel otherTypeModel) {
        this.otherTypeModel = otherTypeModel;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public String index() {
        otherTypeList = otherTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
