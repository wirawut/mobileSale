package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.UnitModel;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class UnitAction extends IndexAction {

    private UnitModel unitModel;
    private List unitList;
    private int unit_id;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;

    public UnitAction() {
        unitModel = new UnitModel();
        manageGeneralModel = new ManageGeneralModel();
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

    public int getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(int unit_id) {
        this.unit_id = unit_id;
    }

    public UnitModel getUnitModel() {
        return unitModel;
    }

    public void setUnitModel(UnitModel unitModel) {
        this.unitModel = unitModel;
    }

    public List getUnitList() {
        return unitList;
    }

    public void setUnitList(List unitList) {
        this.unitList = unitList;
    }

    public String index() {
        unitList = unitModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        Date date = new Date();
        unit_id = unitModel.getUnit_id();
        if (unit_id == 0) {
            unitModel.setDate(date);
            unitModel.save(unitModel);
        } else {
            unitModel.setDate(date);
            unitModel.update(unitModel, unit_id);
            setUnit_id(0);
        }
        unitList = unitModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        unitModel = unitModel.find(unit_id);
        unitList = unitModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        unitModel.delete(unit_id);
        unitList = unitModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
