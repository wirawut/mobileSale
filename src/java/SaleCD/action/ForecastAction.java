package SaleCD.action;

import SaleCD.model.ForecastModel;
import SaleCD.model.ManageGeneralModel;
import java.util.ArrayList;
import java.util.List;

public class ForecastAction extends IndexAction {
    private ForecastModel forecastModel;
    private ManageGeneralModel manageGeneralModel;
    private List manageGeneralList;
    private List forecastList;
    private List forecastShowList;
    public ForecastAction() {
        forecastModel = new ForecastModel();
        manageGeneralModel = new ManageGeneralModel();
        forecastShowList = new ArrayList();
        forecastShowList.add("บาท");
        forecastShowList.add("เรียล");
        forecastShowList.add("วอน");
        forecastShowList.add("ดีนาร์คูเวต");
        forecastShowList.add("ชิลลิงเคนยา");
        forecastShowList.add("ดอลลาร์แคนาดา");
        forecastShowList.add("หยวนเหรินหมินปี้");
        forecastShowList.add("โครูนาเช็ก");
        forecastShowList.add("ริยัลซาอุดีอาระเบีย");
        forecastShowList.add("เยน");
        forecastShowList.add("โครนเดนมาร์ก");
        forecastShowList.add("ดอลลาร์ไต้หวัน");
        forecastShowList.add("โครนนอร์เวย์");
        forecastShowList.add("ดอลลาร์นิวซีแลนด์");
        forecastShowList.add("กิลเดอร์");
        forecastShowList.add("ดอลลาร์บรูไน");
        forecastShowList.add("ตากา");
        forecastShowList.add("ฟรังก์เบลเยียม");
        forecastShowList.add("รูปีปากีสถาน");
        forecastShowList.add("เอสคูโดโปรตุเกส");
        forecastShowList.add("ฟรังก์ฝรั่งเศส");
        forecastShowList.add("มาร์คฟินแลนด์");
        forecastShowList.add("เปโซฟิลิปปินส์");
        forecastShowList.add("ริงกิต");
        forecastShowList.add("เปโซเม็กซิโก");
        forecastShowList.add("จัต");
        forecastShowList.add("มาร์คเยอรมัน");
        forecastShowList.add("รูเบิลรัสเซีย");
        forecastShowList.add("กีบ");
        forecastShowList.add("ดอง");
        forecastShowList.add("เปเซตาสเปน");
        forecastShowList.add("ฟรังก์สวิส");
        forecastShowList.add("โครนา");
        forecastShowList.add("ดอลลาร์สหรัฐ");
        forecastShowList.add("ดีแรห์มสหรัฐอาหรับเอมิเรตส์");
        forecastShowList.add("ปอนด์สเตอร์ลิง");
        forecastShowList.add("ดอลลาร์สิงคโปร์");
        forecastShowList.add("ดอลลาร์ออสเตรเลีย");
        forecastShowList.add("ชิลลิงออสเตรีย");
        forecastShowList.add("ลีร์อิตาลี");
        forecastShowList.add("รูปีอินเดีย");
        forecastShowList.add("รูเปีย");
        forecastShowList.add("แรนด์สหภาพแอฟริกาใต้");
        forecastShowList.add("ปอนด์ไอร์แลนด์");
        forecastShowList.add("ดอลลาร์ฮ่องกง");
    }

    public List getForecastShowList() {
        return forecastShowList;
    }

    public void setForecastShowList(List forecastShowList) {
        this.forecastShowList = forecastShowList;
    }

    public ForecastModel getForecastModel() {
        return forecastModel;
    }

    public void setForecastModel(ForecastModel forecastModel) {
        this.forecastModel = forecastModel;
    }

    public List getForecastList() {
        return forecastList;
    }

    public void setForecastList(List forecastList) {
        this.forecastList = forecastList;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public String index() {
        forecastList = forecastModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
