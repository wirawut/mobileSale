package SaleCD.action;

import SaleCD.model.ContentMenuModel;
import SaleCD.model.ManageGeneralModel;
import java.util.List;

public class ContentMenuAction {

    private int content_menu_id;
    private List contentMenuList;
    private ContentMenuModel contentMenuModel;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;

    public ContentMenuAction() {
        contentMenuModel = new ContentMenuModel();
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

    public int getContent_menu_id() {
        return content_menu_id;
    }

    public void setContent_menu_id(int content_menu_id) {
        this.content_menu_id = content_menu_id;
    }

    public List getContentMenuList() {
        return contentMenuList;
    }

    public void setContentMenuList(List contentMenuList) {
        this.contentMenuList = contentMenuList;
    }

    public ContentMenuModel getContentMenuModel() {
        return contentMenuModel;
    }

    public void setContentMenuModel(ContentMenuModel contentMenuModel) {
        this.contentMenuModel = contentMenuModel;
    }

    public String index() {
        contentMenuList = contentMenuModel.list();
        return "SUCCESS";
    }

    public String delete() {
        contentMenuModel.delete(content_menu_id);
        contentMenuList = contentMenuModel.list();
        return "SUCCESS";
    }

    public String edit() {
        contentMenuModel = contentMenuModel.find(content_menu_id);
        contentMenuList = contentMenuModel.list();
        return "SUCCESS";
    }

    public String save() {
        content_menu_id = contentMenuModel.getContent_menu_id();
        if (content_menu_id == 0) {
            contentMenuModel.save(contentMenuModel);
        } else {
            contentMenuModel.update(contentMenuModel,content_menu_id);
            setContent_menu_id(0);
        }
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
