package SaleCD.model;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class LevelModel extends Model {

    private int level_id;
    private String level;
    private String access;
    private Date date_save;

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getAccess() {
        return access;
    }

    public void setAccess(String access) {
        this.access = access;
    }

    public Date getDate_save() {
        return date_save;
    }

    public void setDate_save(Date date_save) {
        this.date_save = date_save;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        List levels = session.createQuery("FROM LevelModel").list();
        session.getTransaction().commit();
        session.close();
        return levels;
    }

    public void update(LevelModel levelModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(levelModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int level_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        LevelModel levels = (LevelModel) session.get(LevelModel.class, level_id);
        session.delete(levels);
        session.getTransaction().commit();
        session.close();
    }

    public LevelModel find(int level_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        LevelModel levels = (LevelModel) session.get(LevelModel.class, level_id);
        session.getTransaction().commit();
        session.close();
        return levels;
    }

    public void save(LevelModel levelModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(levelModel);
        session.getTransaction().commit();
        session.close();
    }
}
