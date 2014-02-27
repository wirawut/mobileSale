package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.OtherMenuModel;
import java.util.ArrayList;
import java.util.List;

public class OtherMenuAction extends IndexAction {

    private int other_menu_id;
    private List otherMenuList;
    private OtherMenuModel otherMenuModel;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private List otherMenuShowList;

    public OtherMenuAction() {
        otherMenuModel = new OtherMenuModel();
        manageGeneralModel = new ManageGeneralModel();

        //เพิ่มข้อมูลใส่อาเรยลิสเเล้วเอาไปใส่dropdown
        otherMenuShowList = new ArrayList();
        otherMenuShowList.add("Block");
        otherMenuShowList.add("None");
    }

    public List getOtherMenuShowList() {
        return otherMenuShowList;
    }

    public void setOtherMenuShowList(List otherMenuShowList) {
        this.otherMenuShowList = otherMenuShowList;
    }

    public int getOther_menu_id() {
        return other_menu_id;
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

    public void setOther_menu_id(int other_menu_id) {
        this.other_menu_id = other_menu_id;
    }

    public List getOtherMenuList() {
        return otherMenuList;
    }

    public void setOtherMenuList(List otherMenuList) {
        this.otherMenuList = otherMenuList;
    }

    public OtherMenuModel getOtherMenuModel() {
        return otherMenuModel;
    }

    public void setOtherMenuModel(OtherMenuModel otherMenuModel) {
        this.otherMenuModel = otherMenuModel;
    }

    public String index() {
        otherMenuList = otherMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        other_menu_id = otherMenuModel.getOther_menu_id();
        if (other_menu_id == 0) {
            otherMenuModel.save(otherMenuModel);
        } else {
            otherMenuModel.update(otherMenuModel, other_menu_id);
            setOther_menu_id(0);
        }
        otherMenuList = otherMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        otherMenuModel = otherMenuModel.find(other_menu_id);
        otherMenuList = otherMenuModel.list();
        manageGeneralList=manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        otherMenuModel.delete(other_menu_id);
        otherMenuList = otherMenuModel.list();
        return "SUCCESS";
    }
}
