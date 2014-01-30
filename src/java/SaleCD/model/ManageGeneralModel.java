package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class ManageGeneralModel extends Model {

    private int user_id;
    private HeaderModel headerModel;
    private FooterModel footerModel;
    private MainMenuModel mainMenuModel;
    private OtherMenuModel otherMenuModel;
    private UserMenuModel usermenuModel;
    private ContentMenuModel contentMenuModel;
    private String fname;
    private String lname;
    private Date birthdate;
    private String sex;
    private CompanyModel companyModel;
    private String address;
    private String email;
    private String tel;
    private LevelModel levelModel;
    private String username;
    private String password;
    private String image;
    private Date date;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
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

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public CompanyModel getCompanyModel() {
        return companyModel;
    }

    public void setCompanyModel(CompanyModel companyModel) {
        this.companyModel = companyModel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public LevelModel getLevelModel() {
        return levelModel;
    }

    public void setLevelModel(LevelModel levelModel) {
        this.levelModel = levelModel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        //model คือชื่อเเพคเกจ
        String hql = "SELECT model FROM ManageGeneralModel model";
        List manageGeneralModels = session.createQuery(hql).list();
        session.getTransaction().commit();
        session.close();
        return manageGeneralModels;
    }
}
