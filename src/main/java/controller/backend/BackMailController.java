package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.IConsultService;

/**
 * Created by L on 2018/1/11.
 */
@Service
@RequestMapping("/back/mail")
public class BackMailController {

    @Autowired
    private IConsultService iConsultService;

    @RequestMapping("send.do")
    public ModelAndView send(String toName,String toMail, String content) throws Exception {
        iConsultService.reply(toName,toMail,content);
        return new ModelAndView("redirect:/back/page/messages.do");
    }
    @RequestMapping("delete.do")
    public ModelAndView delete(int id){
        iConsultService.deleteById(id);
        return  new ModelAndView("redirect:/back/page/messages.do");
    }

}
