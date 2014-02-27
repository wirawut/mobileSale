package SaleCD.action;

import SaleCD.model.FooterModel;
import SaleCD.model.ManageGeneralModel;
import SaleCD.model.Model;
import SaleCD.model.UnitModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

public class FooterAction extends IndexAction {
    
    private int footer_id;
    private FooterModel footerModel;
    private List footerList;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;
    private List footerShowList;

    public FooterAction() {
        footerModel = new FooterModel();
        manageGeneralModel = new ManageGeneralModel();

        //ข้อมูลสำหรับโชวบนdropdown
        footerShowList = new ArrayList();
        footerShowList.add("Block");
        footerShowList.add("None");
    }
    
    public List getFooterShowList() {
        return footerShowList;
    }
    
    public void setFooterShowList(List footerShowList) {
        this.footerShowList = footerShowList;
    }
    
    public int getFooter_id() {
        return footer_id;
    }
    
    public void setFooter_id(int footer_id) {
        this.footer_id = footer_id;
    }
    
    public FooterModel getFooterModel() {
        return footerModel;
    }
    
    public void setFooterModel(FooterModel footerModel) {
        this.footerModel = footerModel;
    }
    
    public List getFooterList() {
        return footerList;
    }
    
    public void setFooterList(List footerList) {
        this.footerList = footerList;
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
    
    public String index() {
        manageGeneralList = manageGeneralModel.list();
        footerList = footerModel.list();
        return "SUCCESS";
    }
    
    public String save() {
        footer_id = footerModel.getFooter_id();
        if (footer_id == 0) {
            footerModel.save(footerModel);
        } else {
            footerModel.update(footerModel, footer_id);
            setFooter_id(0);
        }
        footerList = footerModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
    
    public String edit() {
        footerModel = footerModel.find(footer_id);
        footerList = footerModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
    
    public String delete() {
        footerModel.delete(footer_id);
        footerList = footerModel.list();
        return "SUCCESS";
    }
}
