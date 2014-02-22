
package SaleCD.action;

import SaleCD.model.MainMenuModel;
import java.util.List;

public class MainMenuAction {
    private int main_menu_id;
    private MainMenuModel mainMenuModel;
    private List mainMenuList;
    
    public MainMenuAction(){
    mainMenuModel = new MainMenuModel();
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
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }

    public String edit() {
        mainMenuModel = mainMenuModel.find(main_menu_id);
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }

    public String delete() {
        mainMenuModel.delete(main_menu_id);
        mainMenuList = mainMenuModel.list();
        return "SUCCESS";
    }
}
