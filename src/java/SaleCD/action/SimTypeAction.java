package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.SimTypeModel;
import java.util.Date;
import java.util.List;

public class SimTypeAction extends IndexAction {

    private int sim_type_id;
    private List simTypeList;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private SimTypeModel simTypeModel;

    public SimTypeAction() {
        simTypeModel = new SimTypeModel();
        manageGeneralModel = new ManageGeneralModel();
    }

    public int getSim_type_id() {
        return sim_type_id;
    }

    public void setSim_type_id(int sim_type_id) {
        this.sim_type_id = sim_type_id;
    }

    public SimTypeModel getSimTypeModel() {
        return simTypeModel;
    }

    public void setSimTypeModel(SimTypeModel simTypeModel) {
        this.simTypeModel = simTypeModel;
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
        return simTypeModel;
    }

    public void setSimtypeModel(SimTypeModel simtypeModel) {
        this.simTypeModel = simtypeModel;
    }

    public String index() {
        simTypeList = simTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        simTypeModel = simTypeModel.find(sim_type_id);
        simTypeList = simTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        sim_type_id = simTypeModel.getSim_type_id();
        Date date = new Date();
        if (sim_type_id == 0) {
            simTypeModel.setDate(date);
            simTypeModel.save(simTypeModel);
        } else {
            simTypeModel.setDate(date);
            simTypeModel.update(simTypeModel, sim_type_id);
            setSim_type_id(0);
        }
        simTypeList = simTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        simTypeModel.delete(sim_type_id);
        simTypeList = simTypeModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
