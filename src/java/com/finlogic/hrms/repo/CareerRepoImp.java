/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.finlogic.hrms.repo;

import com.finlogic.hrms.Beans.JobBean;
import com.finlogic.hrms.Beans.UpdateBean;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Krishna
 */

@Repository
public class CareerRepoImp implements CareerRepo {
    
    @Autowired
    JdbcTemplate jd;
    
    @Override
    public int insertVacancy(JobBean jobBean) {
        String insertQuery = 
                "insert into job_vacancy(title, vacancyCount) "
                + "values('"+jobBean.getTitle()+"', "+jobBean.getVacancyCount()+")";
        
        return jd.update(insertQuery);
    }
    
    @Override
    public List<Map<String, Object>> getVacancies() {
        String query = "select * from job_vacancy";
        return jd.queryForList(query);
    }
    
    @Override
    public int deleteRole(int id) {
        String sql = "delete from job_Vacancy where job_id="+id;
        return jd.update(sql);
    }
    
    @Override
    public int updateRole(UpdateBean updateBean) {
        String sql = "update job_vacancy set title='"+updateBean.getTitle()+"', "
                + "vacancyCount=" + updateBean.getVacancyCount() + " where job_id=" +
                updateBean.getId();
        
        return jd.update(sql);
    }
    
    @Override
    public Map<String, Object> getData(int id) {
        String sql = "select * from job_vacancy where job_id="+id;
        return jd.queryForMap(sql);
    }
    
}
