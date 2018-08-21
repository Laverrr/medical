package controller.portal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Disease;
import service.IDiseaseService;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Controller
@RequestMapping("/front/disease")
public class FrontDiseaseController {

    @Autowired
    private IDiseaseService iDiseaseService;

    @RequestMapping("diseases")
    public String diseases(int parentId, int Id, Model model){
        List<Disease> diseases = iDiseaseService.selectByParentId(parentId);
        model.addAttribute("diseases",diseases);
        Disease disease = iDiseaseService.selectById(Id);
        model.addAttribute("disease",disease);
        return "front/program";
    }

}
