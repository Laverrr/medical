package controller.portal;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.News;
import service.INewsService;
import service.INousService;

import java.util.List;

/**
 * Created by L on 2018/1/5.
 */
@Controller
@RequestMapping("/front/page")
public class FrontPageController {

    @Autowired
    private INewsService iNewsService;
    @Autowired
    private INousService iNousService;

    @RequestMapping("index.do")
    public String index(){
        return "front/index";
    }

    @RequestMapping("news.do")
    public String news(Model model, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "4") int pageSize){
        PageInfo pageInfo = iNewsService.list(pageNum, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "front/news";
    }

    @RequestMapping("blog.do")
    public String blog(Model model, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "7") int pageSize){
        PageInfo pageInfo =iNousService.list(pageNum,pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "front/blog";
    }

    @RequestMapping("contact.do")
    public String contact(){
        return "front/contact";
    }

    @RequestMapping("programs.do")
    public String programs(){
        return "front/programs";
    }

    @RequestMapping("services.do")
    public String services(){
        return "front/services";
    }
}
