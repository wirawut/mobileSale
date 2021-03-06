package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class MobileModel extends Model {

    private int mobile_id;
    private MobileTypeModel mobileTypeModel;
    private String mobile;
    private String image;
    private int price_buy;
    private int price_sale;
    private UnitModel unitModel;
    private int quantity;
    private Date date;
    private String detail;

    public int getMobile_id() {
        return mobile_id;
    }

    public void setMobile_id(int mobile_id) {
        this.mobile_id = mobile_id;
    }

    public MobileTypeModel getMobileTypeModel() {
        return mobileTypeModel;
    }

    public void setMobileTypeModel(MobileTypeModel mobileTypeModel) {
        this.mobileTypeModel = mobileTypeModel;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice_buy() {
        return price_buy;
    }

    public void setPrice_buy(int price_buy) {
        this.price_buy = price_buy;
    }

    public int getPrice_sale() {
        return price_sale;
    }

    public void setPrice_sale(int price_sale) {
        this.price_sale = price_sale;
    }

    public UnitModel getUnitModel() {
        return unitModel;
    }

    public void setUnitModel(UnitModel unitModel) {
        this.unitModel = unitModel;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        List mobileList = session.createQuery("SELECT model FROM MobileModel model").list();
        session.getTransaction().commit();
        session.close();
        return mobileList;
    }

    public MobileModel find(int mobile_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        MobileModel mobiles = (MobileModel) session.get(MobileModel.class, mobile_id);
        session.getTransaction().commit();
        session.close();
        return mobiles;
    }

    public void save(MobileModel mobileModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(mobileModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(MobileModel mobileModel, int mobile_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(mobileModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int mobile_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        MobileModel mobiles = (MobileModel) session.get(MobileModel.class, mobile_id);
        session.delete(mobiles);
        session.getTransaction().commit();
        session.close();
    }

    
}
