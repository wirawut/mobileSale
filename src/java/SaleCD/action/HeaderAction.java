package SaleCD.action;

import SaleCD.model.HeaderModel;
import java.util.List;

public class HeaderAction extends IndexAction {

    private HeaderModel headerModel;
    private int header_id;
    private List headerList;
    //คอนสตรัคเจ้อ

    public HeaderAction() {
        headerModel = new HeaderModel();
    }

    public HeaderModel getHeaderModel() {
        return headerModel;
    }

    public void setHeaderModel(HeaderModel headerModel) {
        this.headerModel = headerModel;
    }

    public int getHeader_id() {
        return header_id;
    }

    public void setHeader_id(int header_id) {
        this.header_id = header_id;
    }

    public List getHeaderList() {
        return headerList;
    }

    public void setHeaderList(List headerList) {
        this.headerList = headerList;
    }
    
    public String save(){
        //ถ้าค่า get ที่ส่งมาไม่มีก็ให้save
        if(header_id ==0){
        headerModel.save(headerModel);
        }else{
        headerModel.update(headerModel, header_id);
        }
        
        return "SUCCESS";
    }
}
