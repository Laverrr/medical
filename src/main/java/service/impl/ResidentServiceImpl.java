package service.impl;

import mapper.ResidentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Resident;
import pojo.ResidentExample;
import service.IResidentService;

import java.util.List;

/**
 * Created by L on 2018/1/8.
 */
@Service("iResidentService")
public class ResidentServiceImpl implements IResidentService{

    @Autowired
    private ResidentMapper residentMapper;

    public List<Resident> selectByFamilyId(int familyId) {
        ResidentExample residentExample=new ResidentExample();
        ResidentExample.Criteria criteria = residentExample.createCriteria();
        criteria.andFamilyIdEqualTo(familyId);
        List<Resident> residents = residentMapper.selectByExampleWithBLOBs(residentExample);
        return residents;
    }

    public int add(Resident resident) {
        int result = residentMapper.insert(resident);
        return result;
    }

    public int modify(Resident resident) {
        int result = residentMapper.updateByPrimaryKeySelective(resident);
        return result;
    }

    public Resident selectById(int id) {
        Resident resident = residentMapper.selectByPrimaryKey(id);
        return resident;
    }

    public int delete(int id) {
        int result = residentMapper.deleteByPrimaryKey(id);
        return result;
    }
}
