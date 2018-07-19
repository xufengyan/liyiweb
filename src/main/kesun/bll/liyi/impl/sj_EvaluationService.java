package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Isj_Evaluation;
import kesun.dao.IDoData;
import kesun.dao.liyi.Isj_evaluation;
import kesun.entity.liyi.sj_evaluation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("sjevaluation")
public class sj_EvaluationService extends SuperService implements Isj_Evaluation {

    @Autowired
    private Isj_evaluation dao;

    public sj_EvaluationService (){
        setModel(new sj_evaluation());
    }

    public List<Map<String, Object>> getLoadoutExcelColumns() {
        return null;
    }

    public String getLoadoutExcelFileName() {
        return null;
    }

    public IDoData getDAO() {
        return dao;
    }


    /**
     * 这是一个查询评价的方法
     * @param stroeid
     * @param type
     * @return 返回一个list集合
     */
    public List<Map<String,Object>> genm2(String stroeid,String type,String evalustatus){

        return dao.getm2(stroeid,type,evalustatus);
    }



    public List<Map<String,Object>> genm2Page(Map map){
        return dao.getm2Page(map);
    }

    public int genm2Count(Map map){
        return dao.getm2Count(map);
    }




    /**
     * 这个是id条件查询视图
     * @param id
     * @return
     */
    public List<Map<String,Object>> getm3(String id){
        return dao.getm3(id);
    }


    /**
     * 查询每个商品的评价数量的
     * @param comid
     * @return
     */
    public List<Map> evaluationgetm(String comid){

        return dao.evaluationgetm(comid);
    }


    public List<Map> evaluationcount(String comid){
        return dao.evaluationcount(comid);

    }

    public List<Map> evalyationgetme2(String comid,String storeid,String type){

        return dao.evaluationgetme2(comid,storeid,type);

    }




    public List<Map> usergetevaluation(Map map){
        return dao.usergetevaluation(map);
    }
    public int evaluationCount(Map map){
        return dao.evaluationCount(map);
    }

    public List getSaveAll(String filePath) {
        return null;
    }
}
