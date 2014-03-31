package SaleCD.model;

import java.util.List;
import org.hibernate.Session;

public class ForecastModel extends Model {

    private int range;
    private int cost;
    private int sale;
    private String unit;

    public int getRange() {
        return range;
    }

    public void setRange(int range) {
        this.range = range;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        List forecasts = session.createQuery("FROM ForecastModel").list();
        session.getTransaction().commit();
        session.close();
        return forecasts;
    }
}
