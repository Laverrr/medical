package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mapper.NousMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Nous;
import pojo.NousExample;
import service.INousService;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Service("iNousService")
public class NousServiceImpl implements INousService{

    @Autowired
    private NousMapper nousMapper;

    public PageInfo list(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        NousExample nousExample=new NousExample();
        List<Nous> nous = nousMapper.selectByExampleWithBLOBs(nousExample);
        PageInfo pageResult = new PageInfo(nous);
        pageResult.setList(nous);
        return pageResult;
    }

    public List<Nous> list() {
        NousExample nousExample=new NousExample();
        List<Nous> nous = nousMapper.selectByExample(nousExample);
        return nous;
    }

    public int modify(Nous nous) {
        int result = nousMapper.updateByPrimaryKeySelective(nous);
        return result;
    }

    public int delete(int id) {
        int result = nousMapper.deleteByPrimaryKey(id);
        return result;
    }

    public Nous selectById(int id) {
        Nous nous = nousMapper.selectByPrimaryKey(id);
        return nous;
    }

    public int add(Nous nous) {
        int result = nousMapper.insert(nous);
        return result;
    }
}
