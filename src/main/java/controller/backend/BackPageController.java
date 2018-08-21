package controller.backend;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.*;
import service.*;

import java.util.List;

/**
 * Created by L on 2018/1/5.
 */
@Controller
@RequestMapping("/back/page")
public class BackPageController {

    @Autowired
    private IConsultService iConsultService;
    @Autowired
    private IFamilyService iFamilyService;
    @Autowired
    private INewsService iNewsService;
    @Autowired
    private INousService iNousService;
    @Autowired
    private IDiseaseService iDiseaseService;


    @RequestMapping("login.do")
    public String login(){
        return "back/login";
    }
    @RequestMapping("index.do")
    public String index(Model model){
        int unreadNum = iConsultService.unreadNum();
        model.addAttribute("unreadNum",unreadNum);
        return "back/index";
    }

    @RequestMapping("messages.do")
    public String messages(Model model,@RequestParam(value = "id", defaultValue = "0") int id,
                           @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10") int pageSize){
        PageInfo pageInfo = iConsultService.list(pageNum, pageSize);
        Consult consult = iConsultService.selectById(id);
        iConsultService.modifyById(id);
        model.addAttribute("consult",consult);
        model.addAttribute("pageInfo",pageInfo);
        return "back/messages";
    }

    @RequestMapping("family.do")
    public String family(Model model){
        List<Family> families=iFamilyService.list();
        model.addAttribute("families",families);
        return "back/family";
    }

    @RequestMapping("news.do")
    public String news(Model model){
        List<News> news = iNewsService.list();
        model.addAttribute("news",news);
        return "back/news-list";
    }

    @RequestMapping("nous.do")
    public String nous(Model model){
        List<Nous> nous = iNousService.list();
        model.addAttribute("nous",nous);
        return "back/nous-list";
    }

    @RequestMapping("disease.do")
    public String disease(Model model){
        List<Disease> diseases = iDiseaseService.list();
        model.addAttribute("diseases",diseases);
        return "back/disease-list";
    }


}
