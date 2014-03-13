package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class CustomerModel extends Model {

    private int customer_id;
    private String fname;
    private String lname;
    private String customer_type;
    private String card_number;
    private Date birthdate;
    private String sex;
    private String address;
    private String email;
    private String tel;
    private String image;
    private Date date;

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
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

    public String getCustomer_type() {
        return customer_type;
    }

    public void setCustomer_type(String customer_type) {
        this.customer_type = customer_type;
    }

    public String getCard_number() {
        return card_number;
    }

    public void setCard_number(String card_number) {
        this.card_number = card_number;
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
        List customerList = session.createQuery("FROM CustomerModel").list();
        return customerList;
    }

    public CustomerModel find(int customer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        CustomerModel customers = (CustomerModel) session.get(CustomerModel.class, customer_id);
        session.getTransaction().commit();
        session.close();
        return customers;
    }

    public void save(CustomerModel customerModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(customerModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(CustomerModel customerModel, int customer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(customerModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int customer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        CustomerModel customers = (CustomerModel)session.get(CustomerModel.class, customer_id);
        session.delete(customers);
        session.getTransaction().commit();
        session.close();
    }
}
