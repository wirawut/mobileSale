package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class SimModel extends Model {

    private int sim_id;
    private SimTypeModel simTypeModel;
    private String sim;
    private String image;
    private int price_buy;
    private int price_sale;
    private UnitModel unitModel;
    private int quantity;
    private Date date;
    private String detail;

    public int getSim_id() {
        return sim_id;
    }

    public void setSim_id(int sim_id) {
        this.sim_id = sim_id;
    }

    public SimTypeModel getSimTypeModel() {
        return simTypeModel;
    }

    public void setSimTypeModel(SimTypeModel simTypeModel) {
        this.simTypeModel = simTypeModel;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
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
        List simList = session.createQuery("SELECT model FROM SimModel model").list();
        session.getTransaction().commit();
        session.close();
        return simList;
    }

    public SimModel find(int sim_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        SimModel sims = (SimModel) session.get(SimModel.class, sim_id);
        session.getTransaction().commit();
        session.close();
        return sims;
    }

    public void save(SimModel simModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(simModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(SimModel simModel, int sim_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(simModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int sim_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        SimModel sims = (SimModel)session.get(SimModel.class, sim_id);
        session.delete(sims);
        session.getTransaction().commit();
        session.close();
    }
}
