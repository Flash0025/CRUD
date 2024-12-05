/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.finlogic.hrms.controllers;

import com.finlogic.hrms.Beans.JobBean;
import com.finlogic.hrms.Beans.UpdateBean;
import com.finlogic.hrms.services.CareerService;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author Krishna
 */

@Controller
public class CareerController {
    
    @Autowired
    CareerService cs;
    
    @RequestMapping("index.fin")
    public String loadIndex() {
        return "index";
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=loadLife")
    public String loadLife() {
        return "life";
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=loadAbout")
    public String loadAbout() {
        return "about";
    }
    
    
    @RequestMapping(value="careers.fin", params="cmdAction=loadOpenings")
    public ModelAndView loadOpening() {
        ModelAndView mv = new ModelAndView("openings");
        mv.addObject("openings", cs.getVacancies());
        return mv;
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=loadAddVacancy")
    public String loadVacancy() {
        return "addVacancy";
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=loadEdit")
    public ModelAndView loadEdit(HttpServletRequest req, HttpServletResponse res) {
        int id = Integer.parseInt(req.getParameter("id"));
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("data", cs.getData(id));
        return mv;
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=addVacancy")
    public String addVacancy(HttpServletRequest req, HttpServletResponse res, JobBean jobBean) {
        int result =  cs.insertVacancy(jobBean);
        if (result < 1) return "error";
        return "openings";
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=updateRole")
    public void updateRole(
            HttpServletRequest req, HttpServletResponse res, 
            UpdateBean updateBean) throws IOException {
         int result = cs.updateRole(updateBean);
         res.sendRedirect("careers.fin?cmdAction=loadOpenings");
    }
    
    @RequestMapping(value="careers.fin", params="cmdAction=deleteRole")
    public void deleteRole(HttpServletRequest req, HttpServletResponse res) throws IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        cs.deleteRole(id);
        res.sendRedirect("careers.fin?cmdAction=loadOpenings");
    }
}
