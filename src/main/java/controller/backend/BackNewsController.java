package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.News;
import service.INewsService;

import java.util.List;

/**
 * Created by L on 2018/1/9.
 */
@Controller
@RequestMapping("/back/news")
public class BackNewsController {

    @Autowired
    private INewsService iNewsService;

    @RequestMapping("/modifyPage.do")
    public String modify(Model model,int id){
        News news = iNewsService.selectById(id);
        model.addAttribute("news",news);
        return "back/news-modify";
    }

    @RequestMapping("/modify.do")
    public ModelAndView modify(News news){
        iNewsService.modify(news);
        return new ModelAndView("redirect:/back/page/news.do");
    }

    @RequestMapping("/delete.do")
    public ModelAndView delete(int id){
        iNewsService.delete(id);
        return new ModelAndView("redirect:/back/page/news.do");
    }

    @RequestMapping("/addPage.do")
    public String addPage(){
        return "back/news-add";
    }

    @RequestMapping("/add.do")
    public ModelAndView add(News news){
        iNewsService.add(news);
        return new ModelAndView("redirect:/back/page/news.do");
    }



}
