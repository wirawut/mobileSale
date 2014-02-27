package SaleCD.action;

import SaleCD.model.MainMenuModel;
import SaleCD.model.ManageGeneralModel;
import java.util.ArrayList;
import java.util.List;

public class MainMenuAction extends IndexAction {

    private int main_menu_id;
    private MainMenuModel mainMenuModel;
    private List mainMenuList;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private List mainMenuShowList;

    public MainMenuAction() {
        manageGeneralModel = new ManageGeneralModel();
        mainMenuModel = new MainMenuModel();

        //เอาอะเรย์ไปเเสดงบน dropdown
        mainMenuShowList = new ArrayList();
        mainMenuShowList.add("Block");
        mainMenuShowList.add("None");
    }

    public List getMainMenuShowList() {
        return mainMenuShowList;
    }

    public void setMainMenuShowList(List mainMenuShowList) {
        this.mainMenuShowList = mainMenuShowList;
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

    public int getMain_menu_id() {
        return main_menu_id;
    }

    public void setMain_menu_id(int main_menu_id) {
        this.main_menu_id = main_menu_id;
    }

    public MainMenuModel getMainMenuModel() {
        return mainMenuModel;
    }

    public void setMainMenuModel(MainMenuModel mainMenuModel) {
        this.mainMenuModel = mainMenuModel;
    }

    public List getMainMenuList() {
        return mainMenuList;
    }

    public void setMainMenuList(List mainMenuList) {
        this.mainMenuList = mainMenuList;
    }

    public String index() {
        manageGeneralList = manageGeneralModel.list();
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }

    public String save() {
        main_menu_id = mainMenuModel.getMain_menu_id();
        if (main_menu_id == 0) {
            mainMenuModel.save(mainMenuModel);
        } else {
            mainMenuModel.update(mainMenuModel);
            setMain_menu_id(0);
        }
        manageGeneralList = manageGeneralModel.list();
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }

    public String edit() {
        mainMenuModel = mainMenuModel.find(main_menu_id);
        mainMenuList = mainMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        mainMenuModel.delete(main_menu_id);
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }
}
