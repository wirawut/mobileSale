package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.SimTypeModel;
import java.util.List;

public class SimTypeAction extends IndexAction {

    private List simTypeList;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private SimTypeModel simtypeModel;

    public SimTypeAction() {
        simtypeModel = new SimTypeModel();
        manageGeneralModel = new ManageGeneralModel();
    }

    public List getSimTypeList() {
        return simTypeList;
    }

    public void setSimTypeList(List simTypeList) {
        this.simTypeList = simTypeList;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public SimTypeModel getSimtypeModel() {
        return simtypeModel;
    }

    public void setSimtypeModel(SimTypeModel simtypeModel) {
        this.simtypeModel = simtypeModel;
    }

    public String index() {
        simTypeList = simtypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
