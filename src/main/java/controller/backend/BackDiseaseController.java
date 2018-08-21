package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Disease;
import pojo.News;
import service.IDiseaseService;
import service.INewsService;

/**
 * Created by L on 2018/1/9.
 */
@Controller
@RequestMapping("/back/disease")
public class BackDiseaseController {

    @Autowired
    private IDiseaseService iDiseaseService;

    @RequestMapping("/modifyPage.do")
    public String modify(Model model, int id){
        Disease disease = iDiseaseService.selectById(id);
        model.addAttribute("disease",disease);
        return "back/disease-modify";
    }

    @RequestMapping("/modify.do")
    public ModelAndView modify(Disease disease){
        iDiseaseService.modify(disease);
        return new ModelAndView("redirect:/back/page/disease.do");
    }

    @RequestMapping("/delete.do")
    public ModelAndView delete(int id){
        iDiseaseService.delete(id);
        return new ModelAndView("redirect:/back/page/disease.do");
    }

    @RequestMapping("/addPage.do")
    public String addPage(){
        return "back/disease-add";
    }

    @RequestMapping("/add.do")
    public ModelAndView add(Disease disease){
        iDiseaseService.add(disease);
        return new ModelAndView("redirect:/back/page/disease.do");
    }
}
