package SaleCD.action;

import SaleCD.model.ManageGeneralModel;
import SaleCD.model.MobileMemoryModel;
import SaleCD.model.MobileModel;
import java.util.ArrayList;
import java.util.List;

public class SaleMobileAction extends IndexAction {

    private ManageGeneralModel manageGeneralModel;
    private MobileModel mobileModel;
    private MobileMemoryModel mobileMemoryModel;
    private List mobileList;
    private List mobileMemoryList;
    private List mobileMemory;
    private List manageGeneralList;
    private int[] select;
    private int[] number;
    private List numberList;
    private List sumList;
 private List su;
    public SaleMobileAction() {
        mobileModel = new MobileModel();
        mobileMemoryModel = new MobileMemoryModel();
        manageGeneralModel = new ManageGeneralModel();
        mobileMemoryList = new ArrayList();
        numberList = new ArrayList();
        sumList = new ArrayList();
        su = new ArrayList();
    }

    public List getSu() {
        return su;
    }

    public void setSu(List su) {
        this.su = su;
    }

  

    public List getSumList() {
        return sumList;
    }

    public void setSumList(List sumList) {
        this.sumList = sumList;
    }

    public List getNumberList() {
        return numberList;
    }

    public void setNumberList(List numberList) {
        this.numberList = numberList;
    }

    public List getMobileMemory() {
        return mobileMemory;
    }

    public void setMobileMemory(List mobileMemory) {
        this.mobileMemory = mobileMemory;
    }

    public int[] getNumber() {
        return number;
    }

    public void setNumber(int[] number) {
        this.number = number;
    }

    public List getMobileMemoryList() {
        return mobileMemoryList;
    }

    public void setMobileMemoryList(List mobileMemoryList) {
        this.mobileMemoryList = mobileMemoryList;
    }

    public int[] getSelect() {
        return select;
    }

    public void setSelect(int[] select) {
        this.select = select;
    }

    public MobileModel getMobileModel() {
        return mobileModel;
    }

    public void setMobileModel(MobileModel mobileModel) {
        this.mobileModel = mobileModel;
    }

    public List getMobileList() {
        return mobileList;
    }

    public void setMobileList(List mobileList) {
        this.mobileList = mobileList;
    }

    public MobileMemoryModel getMobileMemoryModel() {
        return mobileMemoryModel;
    }

    public void setMobileMemoryModel(MobileMemoryModel mobileMemoryModel) {
        this.mobileMemoryModel = mobileMemoryModel;
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

//    public String index() {
//        manageGeneralList = manageGeneralModel.list();
//        return "SUCCESS";
//    }
    public String saveMemory() {

        //เเสดงรายการที่เลือก
        for (int s = 0; s < select.length; s++) {
            //ดึงข้อมูลที่ทำการselectมาเก็บไว้ใน mobileMemoryList ทีละอันๆเเล้วเตรียมเอาไปเเสดง
            mobileMemoryList.addAll(mobileMemoryModel.listMemory(select[s]));
            su.add(mobileMemoryModel.priceSale(select[s]));
            numberList.add(select[s]);
            int num = (int) numberList.get(s);
            int price_sale = (int) su.get(s);
            sumList.add(num*price_sale);
        }
        mobileList = mobileModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }
}
