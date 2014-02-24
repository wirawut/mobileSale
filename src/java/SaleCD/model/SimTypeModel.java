package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class SimTypeModel extends Model {

    private int sim_type_id;
    private String sim_type;
    private String detail;
    private Date date;

    public int getSim_type_id() {
        return sim_type_id;
    }

    public void setSim_type_id(int sim_type_id) {
        this.sim_type_id = sim_type_id;
    }

    public String getSim_type() {
        return sim_type;
    }

    public void setSim_type(String sim_type) {
        this.sim_type = sim_type;
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
        List simTypes = session.createQuery("FROM SimTypeModel").list();
        session.getTransaction().commit();
        session.close();
        return simTypes;
    }
}
