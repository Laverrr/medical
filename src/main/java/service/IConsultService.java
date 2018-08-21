package service;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import pojo.Consult;

/**
 * Created by L on 2018/1/6.
 */
@Service
public interface IConsultService {

    int add(Consult consult);

    PageInfo list(int pageNum,int pageSize);

    Consult selectById(int id);

    int modifyById(int id);

    int unreadNum();

    void reply(String toName,String toMail,String content) throws Exception;

    int deleteById(int id);
}
