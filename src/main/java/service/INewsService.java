package service;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import pojo.News;

import java.util.List;


/**
 * Created by L on 2018/1/6.
 */
@Service
public interface INewsService {

    PageInfo list(int pageNum,int pageSize);

    List<News> list();

    int modify(News news);

    int delete(int id);

    News selectById(int id);

    int add(News news);
}
