package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.List;
import org.hibernate.Session;

public class FooterModel extends Model {

    private int footer_id;
    private String shows;
    private String footer_font_name;
    private String footer_font_style;
    private String footer_font_size;
    private String footer_font_weight;
    private String footer_font_color;
    private String footer_background_color;
    private String footer_border_color;
    private String footer_border_weight;
    private String footer_border_style;

    public int getFooter_id() {
        return footer_id;
    }

    public void setFooter_id(int footer_id) {
        this.footer_id = footer_id;
    }

    public String getShows() {
        return shows;
    }

    public void setShows(String shows) {
        this.shows = shows;
    }

    public String getFooter_font_name() {
        return footer_font_name;
    }

    public void setFooter_font_name(String footer_font_name) {
        this.footer_font_name = footer_font_name;
    }

    public String getFooter_font_style() {
        return footer_font_style;
    }

    public void setFooter_font_style(String footer_font_style) {
        this.footer_font_style = footer_font_style;
    }

    public String getFooter_font_size() {
        return footer_font_size;
    }

    public void setFooter_font_size(String footer_font_size) {
        this.footer_font_size = footer_font_size;
    }

    public String getFooter_font_weight() {
        return footer_font_weight;
    }

    public void setFooter_font_weight(String footer_font_weight) {
        this.footer_font_weight = footer_font_weight;
    }

    public String getFooter_font_color() {
        return footer_font_color;
    }

    public void setFooter_font_color(String footer_font_color) {
        this.footer_font_color = footer_font_color;
    }

    public String getFooter_background_color() {
        return footer_background_color;
    }

    public void setFooter_background_color(String footer_background_color) {
        this.footer_background_color = footer_background_color;
    }

    public String getFooter_border_color() {
        return footer_border_color;
    }

    public void setFooter_border_color(String footer_border_color) {
        this.footer_border_color = footer_border_color;
    }

    public String getFooter_border_weight() {
        return footer_border_weight;
    }

    public void setFooter_border_weight(String footer_border_weight) {
        this.footer_border_weight = footer_border_weight;
    }

    public String getFooter_border_style() {
        return footer_border_style;
    }

    public void setFooter_border_style(String footer_border_style) {
        this.footer_border_style = footer_border_style;
    }

    public void save(FooterModel footerModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(footerModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(FooterModel footerModel, int footer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(footerModel);
        session.getTransaction().commit();
        session.close();


    }

    public FooterModel find(int footer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        //ค้นหาทุกฟิล์ดใน FooterModel ที่เท่ากับ footer_id เเล้วรีเทิร์นกลับเป็นผลลัพธ์ของเมธอด find
        FooterModel footers = (FooterModel) session.get(FooterModel.class, footer_id);
        session.getTransaction().commit();
        session.close();
        return footers;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        List footers = session.createQuery("FROM FooterModel").list();
        session.getTransaction().commit();
        session.close();
        return footers;
    }

    public void delete(int footer_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        FooterModel footers = (FooterModel) session.get(MainMenuModel.class, footer_id);
        session.delete(footers);
        session.getTransaction().commit();
        session.close();
    }
}
