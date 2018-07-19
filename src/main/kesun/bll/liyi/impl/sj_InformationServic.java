package kesun.bll.liyi.impl;

import kesun.bll.SuperService;
import kesun.bll.liyi.Isj_Information;
import kesun.dao.IDoData;
import kesun.entity.liyi.sj_Information;
import kesun.util.ExcelUtil;
import kesun.util.Tool;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by xufeng on 2018/5/16.
 */
@Service("bsj_information")
public class sj_InformationServic extends SuperService implements Isj_Information{

    @Autowired
    private kesun.dao.liyi.Isj_Information dao;
    public sj_InformationServic(){
       setModel (new sj_Information());
    }


    public List<Map<String, Object>> getLoadoutExcelColumns() {
        List<Map<String,Object>> temp=new ArrayList<Map<String, Object>>();
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("name","姓名");
        Map<String,Object> map2=new HashMap<String, Object>();
        map2.put("IDcard","身份证号");
        Map<String,Object> map3=new HashMap<String, Object>();
        map3.put("phone","手机号");
        temp.add(map);
        temp.add(map2);
        temp.add(map3);
        return temp;
    }

    @Override
    public Boolean isDelete() {
        if (isInUse()) return false;//当前数据在使用中
        return true;
    }


    public String getLoadoutExcelFileName() {
        return "商家基本信息";
    }

    public IDoData getDAO() {
        return dao;
    }

    public List getSaveAll(String filePath) {
        File file=new File(filePath);
        if (file.exists()==false) return null;
        ExcelUtil excel=new ExcelUtil();
        try {
            List<Row> result=excel.readExcel(file.getPath());//读取Excel中的内容
            if (result!=null &&result.size()>0){
                List<sj_Information> ITemp =new ArrayList<sj_Information>();//创建临时操作对象
                for (Row dataRow:result){
                    if (dataRow.getRowNum()==0) continue;

                    sj_Information sj_information=new sj_Information();
                    sj_information.setId(Tool.CreateID());
                    sj_information.setName(dataRow.getCell(1).getStringCellValue());
                    sj_information.setEmail(dataRow.getCell(3).getStringCellValue());
                    //添加Excel中别的字段
                    sj_information.setCreateDate(new java.util.Date());
                    ITemp.add(sj_information);
                }
                return ITemp;
            }
            else {

                return null;
            }

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }


    }


    public List<sj_Information> getmet2(Object obj){

        return dao.getmet2(obj);
    }

    public List<Map<String,Object>> getmet3(String obj){

        return dao.getmet3(obj);
    }

    public List<Map> yanzheng(String password,String id){

        return dao.yanzheng(password,id);
    }
    public List<Map>getuser(){

        return dao.getuser();
    }


}
