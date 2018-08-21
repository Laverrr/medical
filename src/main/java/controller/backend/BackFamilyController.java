package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Family;
import service.IFamilyService;

/**
 * Created by L on 2018/1/8.
 */
@Controller
@RequestMapping("/back/family")
public class BackFamilyController {

    @Autowired
    private IFamilyService iFamilyService;

    @RequestMapping("addPage.do")
    public String addPage(){
        return "back/family-add";
    }

    @RequestMapping("add.do")
    public ModelAndView add(Family family){
        iFamilyService.add(family);
        return new ModelAndView("redirect:/back/page/family.do");
    }

    @RequestMapping("modifyPage.do")
    public String modifyPage(Model model,int familyId){
        Family family = iFamilyService.selectById(familyId);
        model.addAttribute("family",family);
        return "back/family-modify";
    }

    @RequestMapping("modify.do")
    public ModelAndView modify(Family family){
        iFamilyService.modify(family);
        return new ModelAndView("redirect:/back/page/family.do");
    }

    @RequestMapping("delete.do")
    public ModelAndView delete(int familyId){
        iFamilyService.deleteById(familyId);
        return  new ModelAndView("redirect:/back/page/family.do");
    }

}
