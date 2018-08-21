package controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pojo.Record;
import pojo.Resident;
import service.IRecordService;
import service.IResidentService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by L on 2018/1/10.
 */
@Controller
@RequestMapping("/back/record")
public class BackRecordController {

    @Autowired
    private IRecordService iRecordService;
    @Autowired
    private IResidentService iResidentService;

    @RequestMapping("/addPage.do")
    public String addPage(Model model,int familyId){
        List<Resident> residents = iResidentService.selectByFamilyId(familyId);
        model.addAttribute("residents",residents);
        model.addAttribute("familyId",familyId);
        return "back/record-add";
    }

    @RequestMapping(value = "/add.do" , method = RequestMethod.POST)
    public ModelAndView add(Record record){
        Resident resident = iResidentService.selectById(record.getUserId());
        record.setUserName(resident.getName());
        iRecordService.add(record);
        return new ModelAndView("redirect:/back/resident/list.do?familyId="+record.getFamilyId()+"");
    }

    @RequestMapping("/modifyPage.do")
    public String modifyPage(Model model,int id){
        Record record = iRecordService.selectById(id);
        model.addAttribute("record",record);
        return "back/record-modify";
    }

    @RequestMapping(value = "/modify.do" )
    public ModelAndView modify(Record record){

        iRecordService.modify(record);
        return new ModelAndView("redirect:/back/record/list.do?familyId="+record.getFamilyId()+"");
    }

    @RequestMapping("/list.do")
    public String list(Model model,int familyId){
        List<Record> records = iRecordService.selectByFamilyId(familyId);
        model.addAttribute("records",records);
        model.addAttribute("familyId",familyId);
        return "back/record-list";
    }

    @RequestMapping("/delete.do")
    public ModelAndView delete(int familyId,int id){
        iRecordService.delete(id);
        return new ModelAndView("redirect:/back/record/list.do?familyId="+familyId+"");
    }



    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true)); //true:允许输入空值，false:不能为空值
    }
}
