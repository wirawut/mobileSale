package SaleCD.model;

import java.util.List;
import org.hibernate.Session;

public class ContentMenuModel extends Model {

    private int content_menu_id;
    private String shows;
    private String font_name;
    private String font_style;
    private String font_size_header;
    private String font_size_detail;
    private String font_weight_header;
    private String font_weight_detail;
    private String font_color_header;
    private String font_color_detail;
    private String background_color_header;
    private String background_color_detail;
    private String border_color;
    private String border_weight;
    private String border_style;

    public int getContent_menu_id() {
        return content_menu_id;
    }

    public void setContent_menu_id(int content_menu_id) {
        this.content_menu_id = content_menu_id;
    }

    public String getShows() {
        return shows;
    }

    public void setShows(String shows) {
        this.shows = shows;
    }

    public String getFont_name() {
        return font_name;
    }

    public void setFont_name(String font_name) {
        this.font_name = font_name;
    }

    public String getFont_style() {
        return font_style;
    }

    public void setFont_style(String font_style) {
        this.font_style = font_style;
    }

    public String getFont_size_header() {
        return font_size_header;
    }

    public void setFont_size_header(String font_size_header) {
        this.font_size_header = font_size_header;
    }

    public String getFont_size_detail() {
        return font_size_detail;
    }

    public void setFont_size_detail(String font_size_detail) {
        this.font_size_detail = font_size_detail;
    }

    public String getFont_weight_header() {
        return font_weight_header;
    }

    public void setFont_weight_header(String font_weight_header) {
        this.font_weight_header = font_weight_header;
    }

    public String getFont_weight_detail() {
        return font_weight_detail;
    }

    public void setFont_weight_detail(String font_weight_detail) {
        this.font_weight_detail = font_weight_detail;
    }

    public String getFont_color_header() {
        return font_color_header;
    }

    public void setFont_color_header(String font_color_header) {
        this.font_color_header = font_color_header;
    }

    public String getFont_color_detail() {
        return font_color_detail;
    }

    public void setFont_color_detail(String font_color_detail) {
        this.font_color_detail = font_color_detail;
    }

    public String getBackground_color_header() {
        return background_color_header;
    }

    public void setBackground_color_header(String background_color_header) {
        this.background_color_header = background_color_header;
    }

    public String getBackground_color_detail() {
        return background_color_detail;
    }

    public void setBackground_color_detail(String background_color_detail) {
        this.background_color_detail = background_color_detail;
    }

    public String getBorder_color() {
        return border_color;
    }

    public void setBorder_color(String border_color) {
        this.border_color = border_color;
    }

    public String getBorder_weight() {
        return border_weight;
    }

    public void setBorder_weight(String border_weight) {
        this.border_weight = border_weight;
    }

    public String getBorder_style() {
        return border_style;
    }

    public void setBorder_style(String border_style) {
        this.border_style = border_style;
    }

    public List list() {
        Session session = factory.openSession();
        session.beginTransaction();
        List contentMenus = session.createQuery("FROM ContentMenuModel").list();
        session.getTransaction().commit();
        session.close();
        return contentMenus;
    }

    public void save(ContentMenuModel contentMenuModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(contentMenuModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(ContentMenuModel contentMenuModel,int content_menu_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.update(contentMenuModel);
        session.getTransaction().commit();
        session.close();
    }

    public void delete(int content_menu_id) {
        Session session = factory.openSession();
        ContentMenuModel contentMenus = (ContentMenuModel) session.get(ContentMenuModel.class, content_menu_id);
        session.delete(contentMenus);
        session.getTransaction().commit();
        session.close();
    }

    public ContentMenuModel find(int content_menu_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        ContentMenuModel contentMenus = (ContentMenuModel) session.get(ContentMenuModel.class, content_menu_id);
        session.getTransaction().commit();
        session.close();
        return contentMenus;
    }
}
