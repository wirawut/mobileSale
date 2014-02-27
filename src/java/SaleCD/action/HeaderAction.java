package SaleCD.action;

import SaleCD.model.HeaderModel;
import SaleCD.model.ManageGeneralModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;

public class HeaderAction extends IndexAction {
    //เตรียมสร้าง get set ให้ message เพื่อตอบสนองกลับไปยัง success ของ ajax

    private ManageGeneralModel manageGeneralModel;
    private HeaderModel headerModel;
    //รับมาจาก form
    private int header_id;
    private List headerList;
    private List manageGeneralList;
    //คอนสตรัคเจ้อ
    private List headerShowList;

    public HeaderAction() {
        headerModel = new HeaderModel();
        manageGeneralModel = new ManageGeneralModel();

        //กำหนดค่าให้dropdownList
        headerShowList = new ArrayList();
        headerShowList.add("Block");
        headerShowList.add("None");
    }

    public List getHeaderShowList() {
        return headerShowList;
    }

    public void setHeaderShowList(List headerShowList) {
        this.headerShowList = headerShowList;
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

    public String index() {
        manageGeneralList = manageGeneralModel.list();
        headerList = headerModel.list();
        return "SUCCESS";
    }

    public String save() throws IOException {
        header_id = headerModel.getHeader_id();
        if (header_id == 0) {
            headerModel.save(headerModel);
        } else {
            headerModel.update(headerModel, header_id);
            setHeader_id(0);
        }
        manageGeneralList = manageGeneralModel.list();
//        System.out.println("สำเร็จ");
//        HttpServletResponse response = ServletActionContext.getResponse();  
//        PrintWriter out = response.getWriter();  
//        out.println("Hello " + getMessage());  
//        out.flush(); 

        return "SUCCESS";
    }

    public String edit() {
        headerModel = headerModel.find(header_id);
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String delete() {
        headerList = headerModel.list();
        return "SUCCESS";
    }
}
