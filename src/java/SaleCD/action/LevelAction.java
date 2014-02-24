package SaleCD.action;

import SaleCD.model.LevelModel;
import SaleCD.model.ManageGeneralModel;
import SaleCD.model.UnitModel;
import java.util.Date;
import java.util.List;

public class LevelAction extends IndexAction{

    private int level_id;
    private LevelModel levelModel;
    private List levelList;
    private List manageGeneralList;
    private ManageGeneralModel manageGeneralModel;

    public LevelAction() {
        manageGeneralModel = new ManageGeneralModel();
        levelModel = new LevelModel();
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

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public LevelModel getLevelModel() {
        return levelModel;
    }

    public void setLevelModel(LevelModel levelModel) {
        this.levelModel = levelModel;
    }

    public List getLevelList() {
        return levelList;
    }

    public void setLevelList(List levelLst) {
        this.levelList = levelLst;
    }

    public String index() {
        levelList = levelModel.list();
        manageGeneralList = manageGeneralModel.list();
        return "SUCCESS";
    }

    public String save() {
        if (level_id == 0) {
            Date createdDate = new Date();
            levelModel.setDate_save(createdDate);
            levelModel.save(levelModel);
        } else {
            LevelModel oldLevelModel = levelModel.find(level_id);
            levelModel.setLevel_id(level_id);
            levelModel.setDate_save(oldLevelModel.getDate_save());
            levelModel.update(levelModel);
        }
        return "SUCCESS";
    }

    public String edit() {
        levelModel = levelModel.find(level_id);
        levelList = levelModel.list();
        return "SUCCESS";
    }

    public String delete() {
        levelModel.delete(level_id);
        return "SUCCESS";
    }
}
