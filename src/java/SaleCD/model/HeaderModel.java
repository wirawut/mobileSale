package SaleCD.model;

import static SaleCD.model.Model.factory;
import java.util.List;
import org.hibernate.Session;

public class HeaderModel extends Model {

    private int header_id;
    private String header_font_name;
    private String header_font_style;
    private String header_font_size;
    private String header_font_weight;
    private String header_font_color;
    private String header_background_color;
    private String header_border_color;
    private String header_border_weight;
    private String header_border_style;

    public int getHeader_id() {
        return header_id;
    }

    public void setHeader_id(int header_id) {
        this.header_id = header_id;
    }

    public String getHeader_font_name() {
        return header_font_name;
    }

    public void setHeader_font_name(String header_font_name) {
        this.header_font_name = header_font_name;
    }

    public String getHeader_font_style() {
        return header_font_style;
    }

    public void setHeader_font_style(String header_font_style) {
        this.header_font_style = header_font_style;
    }

    public String getHeader_font_size() {
        return header_font_size;
    }

    public void setHeader_font_size(String header_font_size) {
        this.header_font_size = header_font_size;
    }

    public String getHeader_font_weight() {
        return header_font_weight;
    }

    public void setHeader_font_weight(String header_font_weight) {
        this.header_font_weight = header_font_weight;
    }

    public String getHeader_font_color() {
        return header_font_color;
    }

    public void setHeader_font_color(String header_font_color) {
        this.header_font_color = header_font_color;
    }

    public String getHeader_background_color() {
        return header_background_color;
    }

    public void setHeader_background_color(String header_background_color) {
        this.header_background_color = header_background_color;
    }

    public String getHeader_border_color() {
        return header_border_color;
    }

    public void setHeader_border_color(String header_border_color) {
        this.header_border_color = header_border_color;
    }

    public String getHeader_border_weight() {
        return header_border_weight;
    }

    public void setHeader_border_weight(String header_border_weight) {
        this.header_border_weight = header_border_weight;
    }

    public String getHeader_border_style() {
        return header_border_style;
    }

    public void setHeader_border_style(String header_border_style) {
        this.header_border_style = header_border_style;
    }
    //เอา headerModel มาเป็นพารามีเตอร์ซึ่งมันก็คือค่าที่รับมาจากพวก textboxเเล้วเอามาสร้าง get setให้มัน เเล้วก็เอามันมาเซฟ

    public void save(HeaderModel headerModel) {
        Session session = factory.openSession();
        session.beginTransaction();
        session.save(headerModel);
        session.getTransaction().commit();
        session.close();
    }

    public void update(HeaderModel headerModel) {
        Session session = factory.openSession();
        session.getTransaction();
//        headerModel.setHeader_id(header_id);
        session.update(headerModel);
        session.getTransaction().commit();
        session.close();
       
       
    }
    
    public HeaderModel find(int header_id) {
        Session session = factory.openSession();
        session.beginTransaction();
        //ค้นหาทุกฟิล์ดใน HeaderModel ที่เท่ากับ header_id เเล้วรีเทิร์นกลับเป็นผลลัพธ์ของเมธอด find
        HeaderModel headers = (HeaderModel) session.get(HeaderModel.class, header_id);
        session.getTransaction().commit();
        session.close();
        return headers;
      
    }
    
     public List list(){
     Session session = factory.openSession();
        session.beginTransaction();
        List headers = session.createQuery("FROM HeaderModel").list();
        session.getTransaction().commit();
        session.close();
        return headers;
    }
}
