package SaleCD.action;

import SaleCD.model.ContentMenuModel;
import SaleCD.model.ManageGeneralModel;
import java.util.ArrayList;
import java.util.List;

public class ContentMenuAction extends IndexAction {

    private int content_menu_id;
    private List contentMenuList;
    private ContentMenuModel contentMenuModel;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private List contentMenuShowList;

    public ContentMenuAction() {
        contentMenuModel = new ContentMenuModel();
        manageGeneralModel = new ManageGeneralModel();

        //เพิ่มข้อมูลใส่list เเล้วเอาไปใส่dropdown
        contentMenuShowList = new ArrayList();
        contentMenuShowList.add("Block");
        contentMenuShowList.add("None");
    }

    public List getContentMenuShowList() {
        return contentMenuShowList;
    }

    public void setContentMenuShowList(List contentMenuShowList) {
        this.contentMenuShowList = contentMenuShowList;
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
        manageGeneralList = manageGeneralModel.list();
        contentMenuList = contentMenuModel.list();
        return "SUCCESS";
    }

    public String delete() {
        contentMenuModel.delete(content_menu_id);
        contentMenuList = contentMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        contentMenuModel = contentMenuModel.find(content_menu_id);
        contentMenuList = contentMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        content_menu_id = contentMenuModel.getContent_menu_id();
        if (content_menu_id == 0) {
            contentMenuModel.save(contentMenuModel);
        } else {
            contentMenuModel.update(contentMenuModel, content_menu_id);
            setContent_menu_id(0);
        }
        contentMenuList = contentMenuModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
