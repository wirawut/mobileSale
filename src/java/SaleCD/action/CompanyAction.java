package SaleCD.action;

import SaleCD.model.CompanyModel;
import SaleCD.model.UnitModel;
import java.util.Date;
import java.util.List;

public class CompanyAction extends IndexAction {

    private CompanyModel companyModel;
    private List companyList;
    private int company_id;

    public CompanyAction() {
        companyModel = new CompanyModel();
    }

    public CompanyModel getCompanyModel() {
        return companyModel;
    }

    public void setCompanyModel(CompanyModel companyModel) {
        this.companyModel = companyModel;
    }

    public List getCompanyList() {
        return companyList;
    }

    public void setCompanyList(List companyList) {
        this.companyList = companyList;
    }

    public int getCompany_id() {
        return company_id;
    }

    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }

    public String index() {
        companyList = companyModel.list();
        return "SUCCESS";
    }

    public String save() {
        if (company_id == 0) {
            Date createdDate = new Date();
            companyModel.setDate(createdDate);
            companyModel.save(companyModel);
        } else {
            CompanyModel oldIncomeModel = companyModel.find(company_id);
            companyModel.setCompany_id(company_id);
            companyModel.setDate(oldIncomeModel.getDate());
            companyModel.update(companyModel);
        }
        return "SUCCESS";
    }

    public String edit() {
        companyModel = companyModel.find(company_id);
        companyList = companyModel.list();
        return "SUCCESS";
    }

    public String delete() {
        companyModel.delete(company_id);
        return "SUCCESS";
    }
}
