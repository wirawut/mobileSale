package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class MobileMemoryModel extends Model {

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
    private int number;
    private int sum;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

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

    public List listMemory(int select) {
        Session session = factory.openSession();
        session.beginTransaction();
        List mobileMemoryList = session.createQuery("SELECT model FROM MobileModel model WHERE mobile_id=" + select).list();
        session.getTransaction().commit();
        session.close();
        return mobileMemoryList;
    }

    public int priceSale(int select) {
        Session session = factory.openSession();
        session.beginTransaction();
        Object result =session.createQuery("SELECT price_sale FROM MobileModel  WHERE mobile_id=" + select).list().get(0);
        int price_sale = Integer.parseInt(result.toString());
        session.getTransaction().commit();
        session.close();
        return price_sale;
    }
}
