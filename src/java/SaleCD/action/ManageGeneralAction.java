package SaleCD.action;

import SaleCD.model.CompanyModel;
import SaleCD.model.ContentMenuModel;
import SaleCD.model.FooterModel;
import SaleCD.model.HeaderModel;
import SaleCD.model.LevelModel;
import SaleCD.model.MainMenuModel;
import SaleCD.model.ManageGeneralModel;
import static SaleCD.model.Model.factory;
import SaleCD.model.OtherMenuModel;
import SaleCD.model.UserMenuModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

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
    private List companyList;
    private List levelList;
    //Model 7 ตัว รวมคีนอกย์6
    private ManageGeneralModel manageGeneralModel;
    private HeaderModel headerModel;
    private FooterModel footerModel;
    private MainMenuModel mainMenuModel;
    private OtherMenuModel otherMenuModel;
    private UserMenuModel userMenuModel;
    private ContentMenuModel contentMenuModel;
    private CompanyModel companyModel;
    private LevelModel levelModel;
    //สำหรับเเสดงdropdown
    private List listShow;

    public ManageGeneralAction() {
        //new ทุกตัว
        manageGeneralList = new ArrayList();
        headerList = new ArrayList();
        footerList = new ArrayList();
        mainMenuList = new ArrayList();
        otherMenuList = new ArrayList();
        userMenuList = new ArrayList();
        contentMenuList = new ArrayList();
        companyList = new ArrayList();
        levelList = new ArrayList();


        manageGeneralModel = new ManageGeneralModel();
        headerModel = new HeaderModel();
        footerModel = new FooterModel();
        mainMenuModel = new MainMenuModel();
        otherMenuModel = new OtherMenuModel();
        userMenuModel = new UserMenuModel();
        contentMenuModel = new ContentMenuModel();
        companyModel = new CompanyModel();
        levelModel = new LevelModel();


        listShow = new ArrayList();
        listShow.add("Block");
        listShow.add("None");
    }

    public List getListShow() {
        return listShow;
    }

    public void setListShow(List listShow) {
        this.listShow = listShow;
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

    public UserMenuModel getUserMenuModel() {
        return userMenuModel;
    }

    public void setUserMenuModel(UserMenuModel userMenuModel) {
        this.userMenuModel = userMenuModel;
    }

    public void setContentMenuModel(ContentMenuModel contentMenuModel) {
        this.contentMenuModel = contentMenuModel;
    }

    public List getCompanyList() {
        return companyList;
    }

    public void setCompanyList(List companyList) {
        this.companyList = companyList;
    }

    public List getLevelList() {
        return levelList;
    }

    public void setLevelList(List levelList) {
        this.levelList = levelList;
    }

    public CompanyModel getCompanyModel() {
        return companyModel;
    }

    public void setCompanyModel(CompanyModel companyModel) {
        this.companyModel = companyModel;
    }

    public LevelModel getLevelModel() {
        return levelModel;
    }

    public void setLevelModel(LevelModel levelModel) {
        this.levelModel = levelModel;
    }

    public String index() {
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String edit() {
        //ทำงานก่อน save

        //ค้นหาข้อมูลที่เท่ากับ user_id ที่รับค่ามาจาก form ซึ่งมาจากค่า get url
        manageGeneralModel = manageGeneralModel.find(getUser_id());
        //ดึงข้อมูลที่เเสดงจากคีนอกย์เเต่ละตาราง มารวมใส่ใน manageGeneralModel เพื่อเป็นอันเดียวกัน เเล้วเก็บไว้ใน List เเต่ละอัน
        //1 ดึงข้อมูลจาก HeaderModel เมธอด list มาใส่ในManageGeneralModel
        headerList = manageGeneralModel.getHeaderModel().list();
        footerList = manageGeneralModel.getFooterModel().list();
        mainMenuList = manageGeneralModel.getMainMenuModel().list();
        otherMenuList = manageGeneralModel.getOtherMenuModel().list();
        userMenuList = manageGeneralModel.getUserMenuModel().list();
        contentMenuList = manageGeneralModel.getContentMenuModel().list();
        companyList = manageGeneralModel.getCompanyModel().list();
        levelList = manageGeneralModel.getLevelModel().list();


        //2 เอาไอดีจากเเต่ละตัวมา setให้ id ที่อยู่ใน model ของ ที่อยู่ใน managegeneralModelอีกที (คีนอกย์)
        headerModel.setHeader_id(manageGeneralModel.getHeaderModel().getHeader_id());
        footerModel.setFooter_id(manageGeneralModel.getFooterModel().getFooter_id());
        mainMenuModel.setMain_menu_id(manageGeneralModel.getMainMenuModel().getMain_menu_id());
        otherMenuModel.setOther_menu_id(manageGeneralModel.getOtherMenuModel().getOther_menu_id());
        userMenuModel.setUser_menu_id(manageGeneralModel.getUserMenuModel().getUser_menu_id());
        contentMenuModel.setContent_menu_id(manageGeneralModel.getContentMenuModel().getContent_menu_id());
        companyModel.setCompany_id(manageGeneralModel.getCompanyModel().getCompany_id());
        levelModel.setLevel_id(manageGeneralModel.getLevelModel().getLevel_id());

        //เอาข้อมูลมาเเสดง
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
//        if (user_id == 0) {
        //เอาคีนอกที่setไว้เเล้วในเมธอด edit มาsetลงที่ manageGeneralModel 
        Date birthDate = new Date();
        Date date = new Date();
        manageGeneralModel.setHeaderModel(headerModel);
        manageGeneralModel.setFooterModel(footerModel);
        manageGeneralModel.setMainMenuModel(mainMenuModel);
        manageGeneralModel.setOtherMenuModel(otherMenuModel);
        manageGeneralModel.setUserMenuModel(userMenuModel);
        manageGeneralModel.setContentMenuModel(contentMenuModel);
        manageGeneralModel.setFname("วิรวุฒิ");
        manageGeneralModel.setLname("คำพันธ์");
        manageGeneralModel.setBirthdate(birthDate);
        manageGeneralModel.setSex("ชาย");
        manageGeneralModel.setCompanyModel(companyModel);
        manageGeneralModel.setAddress("52/2");
        manageGeneralModel.setEmail("wirawut123345@gmail.com");
        manageGeneralModel.setTel("088-8888888");
        manageGeneralModel.setLevelModel(levelModel);
        manageGeneralModel.setUsername("wirawut");
        manageGeneralModel.setPassword("khampan");
        manageGeneralModel.setImage("xxx.jpg");
        manageGeneralModel.setDate(date);

        //เมื่อ setค่า ทุกฟิล์ดเสร็จเเล้วก็พร้อมที่จะบันทึกครับ ก็เอาmanageGeneralModelไปบันทึกเลย
        manageGeneralModel.save(manageGeneralModel);
//        } else {
//            manageGeneralModel.update(manageGeneralModel);
//        }

        //บันทึกเสร็จเเล้วต่อจากนั้นก็นำมาเเสดง
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
