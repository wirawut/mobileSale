package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.OtherTypeModel;
import java.util.Date;
import java.util.List;

public class OtherTypeAction extends IndexAction {

    private int other_type_id;
    private List otherTypeList;
    private List manageGeneralList;
    private OtherTypeModel otherTypeModel;
    private ManageGeneralModel manageGeneralModel;

    public OtherTypeAction() {
        otherTypeModel = new OtherTypeModel();
        manageGeneralModel = new ManageGeneralModel();
    }

    public int getOther_type_id() {
        return other_type_id;
    }

    public void setOther_type_id(int other_type_id) {
        this.other_type_id = other_type_id;
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

    public String edit() {
        otherTypeModel = otherTypeModel.find(other_type_id);
        otherTypeList = otherTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        Date date = new Date();
        other_type_id = otherTypeModel.getOther_type_id();
        if (other_type_id == 0) {
            otherTypeModel.setDate(date);
            otherTypeModel.save(otherTypeModel);
        } else {
            otherTypeModel.setDate(date);
            otherTypeModel.update(otherTypeModel, other_type_id);
            setOther_type_id(0);
        }
        otherTypeList = otherTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        otherTypeModel.delete(other_type_id);
        manageGeneralList = manageGeneralModel.list();
        otherTypeList = otherTypeModel.list();
        return "SUCCESS";
    }
}
