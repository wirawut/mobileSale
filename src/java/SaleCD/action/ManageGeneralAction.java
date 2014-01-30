package SaleCD.action;

import SaleCD.model.ContentMenuModel;
import SaleCD.model.FooterModel;
import SaleCD.model.HeaderModel;
import SaleCD.model.MainMenuModel;
import SaleCD.model.ManageGeneralModel;
import SaleCD.model.OtherMenuModel;
import SaleCD.model.UserMenuModel;
import java.util.ArrayList;
import java.util.List;

public class ManageGeneralAction extends IndexAction {

    private int user_id;
    //List 7 ตัวเหมือน Model เอาไว้เก็บข้อมูล
    private List manageGeneralList;
    private List headerList;
    private List footerList;
    private List mainMenuList;
    private List otherMenuList;
    private List userMenuList;
    private List contentMenuList;
    //Model 7 ตัว รวมคีนอกย์6
    private ManageGeneralModel manageGeneralModel;
    private HeaderModel headerModel;
    private FooterModel footerModel;
    private MainMenuModel mainMenuModel;
    private OtherMenuModel otherMenuModel;
    private UserMenuModel usermenuModel;
    private ContentMenuModel contentMenuModel;

    public ManageGeneralAction() {
        //new ทุกตัว
        manageGeneralList = new ArrayList();
        headerList = new ArrayList();
        footerList = new ArrayList();
        mainMenuList = new ArrayList();
        otherMenuList = new ArrayList();
        userMenuList = new ArrayList();
        contentMenuList = new ArrayList();

        manageGeneralModel = new ManageGeneralModel();
        headerModel = new HeaderModel();
        footerModel = new FooterModel();
        mainMenuModel = new MainMenuModel();
        otherMenuModel = new OtherMenuModel();
        usermenuModel = new UserMenuModel();
        contentMenuModel = new ContentMenuModel();
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public List getHeaderList() {
        return headerList;
    }

    public void setHeaderList(List headerList) {
        this.headerList = headerList;
    }

    public List getFooterList() {
        return footerList;
    }

    public void setFooterList(List footerList) {
        this.footerList = footerList;
    }

    public List getMainMenuList() {
        return mainMenuList;
    }

    public void setMainMenuList(List mainMenuList) {
        this.mainMenuList = mainMenuList;
    }

    public List getOtherMenuList() {
        return otherMenuList;
    }

    public void setOtherMenuList(List otherMenuList) {
        this.otherMenuList = otherMenuList;
    }

    public List getUserMenuList() {
        return userMenuList;
    }

    public void setUserMenuList(List userMenuList) {
        this.userMenuList = userMenuList;
    }

    public List getContentMenuList() {
        return contentMenuList;
    }

    public void setContentMenuList(List contentMenuList) {
        this.contentMenuList = contentMenuList;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public HeaderModel getHeaderModel() {
        return headerModel;
    }

    public void setHeaderModel(HeaderModel headerModel) {
        this.headerModel = headerModel;
    }

    public FooterModel getFooterModel() {
        return footerModel;
    }

    public void setFooterModel(FooterModel footerModel) {
        this.footerModel = footerModel;
    }

    public MainMenuModel getMainMenuModel() {
        return mainMenuModel;
    }

    public void setMainMenuModel(MainMenuModel mainMenuModel) {
        this.mainMenuModel = mainMenuModel;
    }

    public OtherMenuModel getOtherMenuModel() {
        return otherMenuModel;
    }

    public void setOtherMenuModel(OtherMenuModel otherMenuModel) {
        this.otherMenuModel = otherMenuModel;
    }

    public UserMenuModel getUsermenuModel() {
        return usermenuModel;
    }

    public void setUsermenuModel(UserMenuModel usermenuModel) {
        this.usermenuModel = usermenuModel;
    }

    public ContentMenuModel getContentMenuModel() {
        return contentMenuModel;
    }

    public void setContentMenuModel(ContentMenuModel contentMenuModel) {
        this.contentMenuModel = contentMenuModel;
    }

    public String index() {
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
