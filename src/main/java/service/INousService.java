package service;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import pojo.Nous;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Service
public interface INousService {

    PageInfo list(int pageNum,int pageSize);

    List<Nous> list();

    int modify(Nous nous);

    int delete(int id);

    Nous selectById(int id);

    int add(Nous nous);
}
