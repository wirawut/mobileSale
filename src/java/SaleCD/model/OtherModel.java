package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class OtherModel extends Model {

    private int other_id;
    private OtherTypeModel otherTypeModel;
    private String other;
    private String image;
    private int price_buy;
    private int price_sale;
    private UnitModel unitModel;
    private int quantity;
    private Date date;
    private String detail;

    public int getOther_id() {
        return other_id;
    }

    public void setOther_id(int other_id) {
        this.other_id = other_id;
    }

    public OtherTypeModel getOtherTypeModel() {
        return otherTypeModel;
    }

    public void setOtherTypeModel(OtherTypeModel otherTypeModel) {
        this.otherTypeModel = otherTypeModel;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
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
        List otherList = session.createQuery("SELECT model FROM OtherModel model").list();
        session.getTransaction().commit();
        session.close();
        return otherList;
    }

    public OtherModel find(int other_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        OtherModel others = (OtherModel) session.get(OtherModel.class, other_id);
        session.getTransaction().commit();
        session.close();
        return others;
    }

    public void save(OtherModel otherModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(otherModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(OtherModel otherModel, int other_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(otherModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int other_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        OtherModel others = (OtherModel) session.get(OtherModel.class, other_id);
        session.delete(others);
        session.getTransaction().commit();
        session.close();
    }
}
