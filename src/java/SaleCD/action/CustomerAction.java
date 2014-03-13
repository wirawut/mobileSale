package SaleCD.action;

import SaleCD.model.CustomerModel;
import SaleCD.model.ManageGeneralModel;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerAction extends IndexAction {

    private int customer_id;
    private CustomerModel customerModel;
    private List customerList;
    private ManageGeneralModel manageGeneralModel;
    private List manageGeneralList;
    private List customerTypeShowList;
    private List sexShowList;

    //สร้าง คอนสตรัคเจ้อ เเล้ว new 
    public CustomerAction() {
        manageGeneralModel = new ManageGeneralModel();
        customerModel = new CustomerModel();
        customerTypeShowList = new ArrayList();
        sexShowList = new ArrayList();
        //เพิ่มข้อมูลลงในdropdownList
        customerTypeShowList.add("ไม่มีข้อมูล");
        customerTypeShowList.add("ทั่วไป");
        customerTypeShowList.add("สมาชิก");

        sexShowList.add("ไม่มีข้อมูล");
        sexShowList.add("ชาย");
        sexShowList.add("หญิง");
    }

    public List getCustomerTypeShowList() {
        return customerTypeShowList;
    }

    public void setCustomerTypeShowList(List customerTypeShowList) {
        this.customerTypeShowList = customerTypeShowList;
    }

    public List getSexShowList() {
        return sexShowList;
    }

    public void setSexShowList(List sexShowList) {
        this.sexShowList = sexShowList;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public CustomerModel getCustomerModel() {
        return customerModel;
    }

    public void setCustomerModel(CustomerModel customerModel) {
        this.customerModel = customerModel;
    }

    public List getCustomerList() {
        return customerList;
    }

    public void setCustomerList(List customerList) {
        this.customerList = customerList;
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
        manageGeneralList = manageGeneralModel.list();
        customerList = customerModel.list();
        return "SUCCESS";
    }

    public String edit() {
        customerModel = customerModel.find(customer_id);
        manageGeneralList = manageGeneralModel.list();
        customerList = customerModel.list();
        return "SUCCESS";
    }

    public String save() {
        Date date = new Date();
        customer_id = customerModel.getCustomer_id();
        if (customer_id == 0) {
            customerModel.setDate(date);
            customerModel.save(customerModel);
        } else {
            customerModel.setDate(date);
            customerModel.update(customerModel, customer_id);
            setCustomer_id(0);
        }
        manageGeneralList = manageGeneralModel.list();
        customerList = customerModel.list();
        return "SUCCESS";
    }

    public String delete() {
        customerModel.delete(customer_id);
        manageGeneralList = manageGeneralModel.list();
        customerList = customerModel.list();
        return "SUCCESS";
    }
}
