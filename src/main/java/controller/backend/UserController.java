package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.IConsultService;
import util.Const;

import javax.servlet.http.HttpSession;

/**
 * Created by L on 2018/1/5.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IConsultService iConsultService;

    @RequestMapping(value = "login.do",method = RequestMethod.POST)
    public String login(HttpSession session,Model model,String username, String password) {
        if (!StringUtils.isEmpty(username) && !StringUtils.isEmpty(password)) {
            if (username.equals(password) && username.equals(Const.ADMIN)) {
                int unreadNum = iConsultService.unreadNum();
                model.addAttribute("unreadNum",unreadNum);
                session.setAttribute("admin","admin");
                return "back/index";
            }
        }
        return "back/login";
    }
    @RequestMapping(value = "logout.do")
    public String logout(HttpSession session){
        session.setAttribute("admin","");
        return "back/login";
    }
}
