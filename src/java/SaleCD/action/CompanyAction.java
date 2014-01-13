package SaleCD.action;

import SaleCD.model.CompanyModel;
import java.util.List;

public class CompanyAction extends IndexAction {

    private CompanyModel companyModel;
    private List companyList;

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

    public String index() {
            companyList = companyModel.list();
            return "SUCCESS";
    }
}
