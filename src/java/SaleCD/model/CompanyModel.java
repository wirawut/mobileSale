package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class CompanyModel extends Model {

    private int company_id;
    private String company_name;
    private String company_address;
    private String tel;
    private String fax;
    private String tax_number;
    private Date date;

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public int getCompany_id() {
        return company_id;
    }

    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }

    public String getCompany_address() {
        return company_address;
    }

    public void setCompany_address(String company_address) {
        this.company_address = company_address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getTax_number() {
        return tax_number;
    }

    public void setTax_number(String tax_number) {
        this.tax_number = tax_number;
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
        List companys = session.createQuery("FROM CompanyModel").list();
        session.getTransaction().commit();
        session.close();
        return companys;
    }

    public void update(CompanyModel companyModel,int company_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(companyModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int company_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        CompanyModel companys = (CompanyModel) session.get(CompanyModel.class, company_id);
        session.delete(companys);
        session.getTransaction().commit();
        session.close();
    }

    public CompanyModel find(int level_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        CompanyModel companys = (CompanyModel) session.get(LevelModel.class, level_id);
        session.getTransaction().commit();
        session.close();
        return companys;
    }

    public void save(CompanyModel companyModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(companyModel);
        session.getTransaction().commit();
        session.close();
    }
}
