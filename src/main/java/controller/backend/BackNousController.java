package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Nous;
import service.INousService;


/**
 * Created by L on 2018/1/9.
 */
@Controller
@RequestMapping("/back/nous")
public class BackNousController {

    @Autowired
    private INousService iNousService;

    @RequestMapping("/modifyPage.do")
    public String modifyPage(Model model,int id){
        Nous nous = iNousService.selectById(id);
        model.addAttribute("nous",nous);
        return "back/nous-modify";
    }

    @RequestMapping("/modify.do")
    public ModelAndView modify(Nous nous){
        iNousService.modify(nous);
        return new ModelAndView("redirect:/back/page/nous.do");
    }

    @RequestMapping("/delete.do")
    public ModelAndView delete(int id){
        iNousService.delete(id);
        return new ModelAndView("redirect:/back/page/nous.do");
    }

    @RequestMapping("/addPage.do")
    public String addPage(){
        return "back/nous-add";
    }

    @RequestMapping("/add.do")
    public ModelAndView add(Nous nous){
        iNousService.add(nous);
        return new ModelAndView("redirect:/back/page/nous.do");
    }



}
