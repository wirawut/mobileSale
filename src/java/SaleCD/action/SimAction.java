package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.SimModel;
import SaleCD.model.SimTypeModel;
import SaleCD.model.UnitModel;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

public class SimAction extends IndexAction {

    private int sim_id;
    private SimModel simModel;
    private List simList;
    private ManageGeneralModel manageGeneralModel;
    private List manageGeneralList;
    private UnitModel unitModel;
    private List unitShowList;
    private SimTypeModel simTypeModel;
    private List simTypeShowList;

    public SimAction() {
        simModel = new SimModel();
        manageGeneralModel = new ManageGeneralModel();
        unitModel = new UnitModel();
        simTypeModel = new SimTypeModel();
        simTypeShowList = new ArrayList();
        unitShowList = new ArrayList();

//        unitShowList.add("ชิ้น");
//        unitShowList.add("อัน");
//
//        simTypeShowList.add("Nokia");
//        simTypeShowList.add("Samsung");
    }

    public List getSimList() {
        return simList;
    }

    public void setSimList(List simList) {
        this.simList = simList;
    }

    public List getUnitShowList() {
        return unitShowList;
    }

    public void setUnitShowList(List unitShowList) {
        this.unitShowList = unitShowList;
    }

    public List getSimTypeShowList() {
        return simTypeShowList;
    }

    public void setSimTypeShowList(List simTypeShowList) {
        this.simTypeShowList = simTypeShowList;
    }

    public int getSim_id() {
        return sim_id;
    }

    public void setSim_id(int sim_id) {
        this.sim_id = sim_id;
    }

    public SimModel getSimModel() {
        return simModel;
    }

    public void setSimModel(SimModel simModel) {
        this.simModel = simModel;
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

    public SimTypeModel getSimTypeModel() {
        return simTypeModel;
    }

    public void setSimTypeModel(SimTypeModel simTypeModel) {
        this.simTypeModel = simTypeModel;
    }

    public String index() {
        //เมื่อกดปุ่ม เพิ่ม ให้ดึงข้อมูลมาใส่dropdownlist ทันที
        List simType = simTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < simType.size(); i++) {
            simTypeShowList.add(simType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        simList = simModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        //ดึงข้อมูลมาใส่ dropdownเมื่อกดปุ่มแก้ไข
        List simType = simTypeModel.list();
        List unit = unitModel.list();

        for (int i = 0; i < simType.size(); i++) {
            simTypeShowList.add(simType.get(i));
        }
        for (int i = 0; i < unit.size(); i++) {
            unitShowList.add(unit.get(i));
        }
        simModel = simModel.find(sim_id);
        simList = simModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        simModel.delete(sim_id);
        simList = simModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        sim_id = simModel.getSim_id();
        if (sim_id == 0) {
            simModel.setSimTypeModel(simTypeModel);
            simModel.setUnitModel(unitModel);
            simModel.save(simModel);
        } else {
            simModel.setSimTypeModel(simTypeModel);
            simModel.setUnitModel(unitModel);
            simModel.update(simModel, sim_id);
            setSim_id(0);
        }
        simList = simModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
