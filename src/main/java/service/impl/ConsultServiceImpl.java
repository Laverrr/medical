package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mapper.ConsultMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Consult;
import pojo.ConsultExample;
import pojo.News;
import pojo.NewsExample;
import service.IConsultService;
import util.Const;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * Created by L on 2018/1/6.
 */
@Service("iConsultService")
public class ConsultServiceImpl implements IConsultService {

    @Autowired
    private ConsultMapper consultMapper;

    public int add(Consult consult) {
        consult.setStatus(Const.UNREAD);
        consult.setTime(new Date());
        int insert = consultMapper.insert(consult);
        return insert;
    }

    public PageInfo list(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        ConsultExample consultExample=new ConsultExample();
        List<Consult> consults = consultMapper.selectByExampleWithBLOBs(consultExample);
        PageInfo pageResult = new PageInfo(consults);
        pageResult.setList(consults);
        return pageResult;
    }

    public Consult selectById(int id) {
        Consult consult = consultMapper.selectByPrimaryKey(id);
        return consult;
    }

    public int modifyById(int id) {
        Consult consult=new Consult();
        consult.setId(id);
        consult.setStatus(Const.READED);
        int result = consultMapper.updateByPrimaryKeySelective(consult);
        return result;
    }

    public int unreadNum() {
        ConsultExample consultExample=new ConsultExample();
        ConsultExample.Criteria criteria = consultExample.createCriteria();
        criteria.andStatusEqualTo(0);
        int result = consultMapper.countByExample(consultExample);
        return result;
    }

    public void reply(String toName,String toMail, String content) throws Exception{
        //1.创建连接对象
        Properties properties = new Properties();
        Session session=Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("service@medical.com","123");
            }
        });

        // 2.创建邮件对象

        Message message= new MimeMessage(session);
        message.setFrom(new InternetAddress("service@medical.com"));
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(toMail));
        message.setSubject("来自社区医疗的回复邮件");
        message.setContent("<h1>您好，"+toName+"先生/女士<h1/><br>"+content,"text/html;charset=UTF-8");

        //3. 发邮件
        Transport.send(message);
    }

    public int deleteById(int id) {
        int result = consultMapper.deleteByPrimaryKey(id);
        return result;
    }
}
