package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.UserMenuModel;
import java.util.ArrayList;
import java.util.List;

public class UserMenuAction extends IndexAction {

    private int user_menu_id;
    private UserMenuModel userMenuModel;
    private List userMenuList;
    private List manageGeneraList;
    private ManageGeneralModel manageGeneralModel;
    private List userMenuShowList;

    public UserMenuAction() {
        userMenuModel = new UserMenuModel();
        manageGeneralModel = new ManageGeneralModel();

        //เพิ่มข้อมูลใส่dropdownlist
        userMenuShowList = new ArrayList();
        userMenuShowList.add("Block");
        userMenuShowList.add("None");
    }

    public List getUserMenuShowList() {
        return userMenuShowList;
    }

    public void setUserMenuShowList(List userMenuShowList) {
        this.userMenuShowList = userMenuShowList;
    }

    public int getUser_menu_id() {
        return user_menu_id;
    }

    public void setUser_menu_id(int user_menu_id) {
        this.user_menu_id = user_menu_id;
    }

    public UserMenuModel getUserMenuModel() {
        return userMenuModel;
    }

    public void setUserMenuModel(UserMenuModel userMenuModel) {
        this.userMenuModel = userMenuModel;
    }

    public List getUserMenuList() {
        return userMenuList;
    }

    public void setUserMenuList(List userMenuList) {
        this.userMenuList = userMenuList;
    }

    public List getManageGeneraList() {
        return manageGeneraList;
    }

    public void setManageGeneraList(List manageGeneraList) {
        this.manageGeneraList = manageGeneraList;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public String index() {
        userMenuList = userMenuModel.list();
        manageGeneraList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        userMenuModel.delete(user_menu_id);
        userMenuList = userMenuModel.list();
        manageGeneraList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        user_menu_id = userMenuModel.getUser_menu_id();
        if (user_menu_id == 0) {
            userMenuModel.save(userMenuModel);
        } else {
            userMenuModel.update(userMenuModel, user_menu_id);
            setUser_menu_id(0);
        }
        manageGeneraList = manageGeneralModel.list();
        userMenuList = userMenuModel.list();
        return "SUCCESS";
    }

    public String edit() {
        userMenuModel = userMenuModel.find(user_menu_id);
        userMenuList = userMenuModel.list();
        manageGeneraList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
