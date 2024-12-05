/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.finlogic.hrms.services;

import com.finlogic.hrms.Beans.JobBean;
import com.finlogic.hrms.Beans.UpdateBean;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

/**
 *
 * @author Krishna
 */


public interface CareerService {
    List<Map<String, Object>> getVacancies();
    int insertVacancy(JobBean jobBean);
    int updateRole(UpdateBean updateBean);
    int deleteRole(int id);
    Map<String, Object> getData(int id);
}
