package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class OtherTypeModel extends Model {

    private int other_type_id;
    private String other_type;
    private String detail;
    private Date date;

    public int getOther_type_id() {
        return other_type_id;
    }

    public void setOther_type_id(int other_type_id) {
        this.other_type_id = other_type_id;
    }

    public String getOther_type() {
        return other_type;
    }

    public void setOther_type(String other_type) {
        this.other_type = other_type;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
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
        List otherTyps = session.createQuery("FROM OtherTypeModel").list();
        session.getTransaction().commit();
        session.close();
        return otherTyps;
    }

    public OtherTypeModel find(int other_type_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        OtherTypeModel otherTypes = (OtherTypeModel) session.get(OtherTypeModel.class, other_type_id);
        session.getTransaction().commit();
        session.close();
        return otherTypes;
    }

    public void delete(int other_type_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        OtherTypeModel otherTypeModel = (OtherTypeModel) session.get(OtherTypeModel.class, other_type_id);
        session.delete(otherTypeModel);
        session.getTransaction().commit();
        session.close();

    }

    public void update(OtherTypeModel otherTypeModel, int other_type_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(otherTypeModel);
        session.getTransaction().commit();
        session.close();
    }

    public void save(OtherTypeModel otherTypeModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(otherTypeModel);
        session.getTransaction().commit();
        session.close();
    }
}
