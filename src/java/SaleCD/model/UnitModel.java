package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class UnitModel extends Model {

    private int unit_id;
    private String unit;
    private String detail;
    private Date date;

    public int getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(int unit_id) {
        this.unit_id = unit_id;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
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
        List units = session.createQuery("FROM UnitModel").list();
        session.getTransaction().commit();
        session.close();
        return units;
    }

    public void save(UnitModel unitModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(unitModel);
        session.getTransaction().commit();
        session.close();
    }

    public UnitModel find(int unit_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        UnitModel units = (UnitModel) session.get(UnitModel.class, unit_id);
        session.getTransaction().commit();
        session.close();
        return units;
    }

    public void update(UnitModel unitModel,int unit_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(unitModel);
        session.getTransaction().commit();
        session.close();

    }

    public void delete(int unit_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        UnitModel u = (UnitModel) session.get(UnitModel.class, unit_id);
        session.delete(u);
        session.getTransaction().commit();
        session.close();
    }
}
