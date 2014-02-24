package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class MobileTypeModel extends Model {

    private int mobile_type_id;
    private String mobile_type;
    private String detail;
    private Date date;

    public int getMobile_type_id() {
        return mobile_type_id;
    }

    public void setMobile_type_id(int mobile_type_id) {
        this.mobile_type_id = mobile_type_id;
    }

    public String getMobile_type() {
        return mobile_type;
    }

    public void setMobile_type(String mobile_type) {
        this.mobile_type = mobile_type;
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
        List mobileTypes = session.createQuery("FROM MobileTypeModel").list();
        session.getTransaction().commit();
        session.close();
        return mobileTypes;
    }
}
