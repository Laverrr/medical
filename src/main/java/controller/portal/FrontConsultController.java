package controller.portal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Consult;
import service.IConsultService;

/**
 * Created by L on 2018/1/6.
 */
@Controller
@RequestMapping("/front/consult")
public class FrontConsultController {

    @Autowired
    private IConsultService iConsultService;

    @RequestMapping("add.do")
    public String addConsult(Consult consult){

        int result = iConsultService.add(consult);
        if (result>0){
            return "/front/contact";
        }
        return "";
    }
}
