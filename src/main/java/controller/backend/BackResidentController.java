package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Resident;
import service.IResidentService;

import java.util.List;

/**
 * Created by L on 2018/1/8.
 */
@Controller
@RequestMapping("/back/resident")
public class BackResidentController {

    @Autowired
    private IResidentService iResidentService;

    @RequestMapping("list.do")
    public String list(Model model,int familyId){
        List<Resident> residents = iResidentService.selectByFamilyId(familyId);
        model.addAttribute("residents",residents);
        model.addAttribute("familyId",familyId);
        return "back/resident-list";
    }

    @RequestMapping("addPage.do")
    public String addPage(Model model,int familyId){
        model.addAttribute("familyId",familyId);
        return "back/resident-add";
    }

    @RequestMapping("add.do")
    public ModelAndView add(Resident resident){
        iResidentService.add(resident);
        return new ModelAndView("redirect:/back/resident/list.do?familyId="+resident.getFamilyId()+"");
    }

    @RequestMapping("modify.do")
    public ModelAndView modify(Resident resident){
        iResidentService.modify(resident);
        return new ModelAndView("redirect:/back/resident/list.do?familyId="+resident.getFamilyId()+"");
    }

    @RequestMapping("modifyPage.do")
    public String modifyPage(Model model,int id){
        Resident resident = iResidentService.selectById(id);
        model.addAttribute("resident",resident);
        return "back/resident-modify";
    }

    @RequestMapping("delete.do")
    public ModelAndView delete(int id,int familyId){
        iResidentService.delete(id);
        return new ModelAndView("redirect:/back/resident/list.do?familyId="+familyId+"");
    }
}
