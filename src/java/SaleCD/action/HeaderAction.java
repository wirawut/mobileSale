package SaleCD.action;

import SaleCD.model.HeaderModel;
import SaleCD.model.ManageGeneralModel;
import java.util.ArrayList;
import java.util.List;

public class HeaderAction extends IndexAction {

    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private HeaderModel headerModel;
    //รับมาจาก form
    private int header_id;
    private List headerList;
    //คอนสตรัคเจ้อ

    public HeaderAction() {
        headerModel = new HeaderModel();
        manageGeneralModel = new ManageGeneralModel();
        manageGeneralList = new ArrayList();
    }

    public List getManageGeneralList() {
        return manageGeneralList;
    }

    public void setManageGeneralList(List manageGeneralList) {
        this.manageGeneralList = manageGeneralList;
    }

    public ManageGeneralModel getManageGeneralModel() {
        return manageGeneralModel;
    }

    public void setManageGeneralModel(ManageGeneralModel manageGeneralModel) {
        this.manageGeneralModel = manageGeneralModel;
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

    public String save() {
        header_id = 1;
        if (header_id == 0) {
            headerModel.save(headerModel);
        } else {
//            headerModel.setHeader_id(header_id);
            headerModel.update(headerModel);
            setHeader_id(0);
        }
        headerList = headerModel.list();
        return "SUCCESS";
    }

    public String edit() {
        headerModel = headerModel.find(header_id);
//        headerList = headerModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
