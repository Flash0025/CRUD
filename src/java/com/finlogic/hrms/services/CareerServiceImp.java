/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.finlogic.hrms.services;

import com.finlogic.hrms.Beans.JobBean;
import com.finlogic.hrms.Beans.UpdateBean;
import com.finlogic.hrms.repo.CareerRepo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Krishna
 */

@Service
public class CareerServiceImp implements CareerService {
    
    @Autowired
    CareerRepo cr;

    @Override
    public List<Map<String, Object>> getVacancies() {
        return cr.getVacancies();
    }
    
    @Override
    public int insertVacancy(JobBean jobBean) {
        return cr.insertVacancy(jobBean);
    }
    
    @Override
    public int deleteRole(int id) {
        return cr.deleteRole(id);
    }
    
    @Override
    public int updateRole(UpdateBean updateBean) {
        return cr.updateRole(updateBean);
    }
    
    @Override
    public Map<String, Object> getData(int id) {
        return cr.getData(id);
    }
}
