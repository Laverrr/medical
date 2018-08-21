package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mapper.FamilyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Family;
import pojo.FamilyExample;
import service.IFamilyService;

import java.util.List;

/**
 * Created by L on 2018/1/8.
 */
@Service("iFamilyService")
public class FamilyServiceImpl implements IFamilyService {

    @Autowired
    private FamilyMapper familyMapper;

    public List<Family> list() {
        FamilyExample familyExample=new FamilyExample();
        List<Family> families = familyMapper.selectByExample(familyExample);
        return families;
    }

    public int add(Family family) {
        int result = familyMapper.insert(family);
        return result;
    }

    public int modify(Family family) {
        int result = familyMapper.updateByPrimaryKeySelective(family);
        return result;
    }

    public Family selectById(int familyId) {
        Family family = familyMapper.selectByPrimaryKey(familyId);
        return family;
    }

    public int deleteById(int familyId) {
        int result = familyMapper.deleteByPrimaryKey(familyId);
        return result;
    }
}
