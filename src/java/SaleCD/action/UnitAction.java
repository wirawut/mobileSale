package SaleCD.action;

import SaleCD.model.UnitModel;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class UnitAction extends IndexAction {

    private UnitModel unitModel;
    private List unitList;
    private int unit_id;

    public UnitAction() {
        unitModel = new UnitModel();
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
        return "SUCCESS";
    }

   public String save() {
        if (unit_id == 0) {
            Date createdDate = new Date();
            unitModel.setDate(createdDate);
            unitModel.save(unitModel);
        } else {
            UnitModel oldIncomeModel = unitModel.find(unit_id);
            unitModel.setUnit_id(unit_id);
            unitModel.setDate(oldIncomeModel.getDate());
            unitModel.update(unitModel);
        }
        return "SUCCESS";
    }

    public String edit() {
        unitModel = unitModel.find(unit_id);
        unitList = unitModel.list();
        return "SUCCESS";
    }

     public String delete() {
        unitModel.delete(unit_id);
        return "SUCCESS";
    }
}
