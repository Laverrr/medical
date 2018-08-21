package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mapper.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.News;
import pojo.NewsExample;
import service.INewsService;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Service("iNewsService")
public class NewsServiceImpl implements INewsService{

    @Autowired
    private NewsMapper newsMapper;

    public PageInfo list(int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        NewsExample newsExample=new NewsExample();
        List<News> news = newsMapper.selectByExampleWithBLOBs(newsExample);
        PageInfo pageResult = new PageInfo(news);
        pageResult.setList(news);
        return pageResult;
    }

    public List<News> list() {
        NewsExample newsExample=new NewsExample();
        List<News> news = newsMapper.selectByExample(newsExample);
        return news;
    }

    public int modify(News news) {
        int result = newsMapper.updateByPrimaryKeySelective(news);
        return result;
    }

    public int delete(int id) {
        int result = newsMapper.deleteByPrimaryKey(id);
        return result;
    }

    public News selectById(int id) {
        News news = newsMapper.selectByPrimaryKey(id);
        return news;
    }

    public int add(News news) {
        int result = newsMapper.insert(news);
        return result;
    }
}
