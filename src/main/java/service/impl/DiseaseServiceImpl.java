package service.impl;

import mapper.DiseaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Disease;
import pojo.DiseaseExample;
import service.IDiseaseService;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Service("iDiseaseService")
public class DiseaseServiceImpl implements IDiseaseService{

    @Autowired
    private DiseaseMapper diseaseMapper;

    public List<Disease> selectByParentId(int parentId) {
        DiseaseExample diseaseExample=new DiseaseExample();
        DiseaseExample.Criteria criteria = diseaseExample.createCriteria();
        criteria.andParentIdEqualTo(parentId);
        List<Disease> diseases = diseaseMapper.selectByExample(diseaseExample);
        return diseases;
    }

    public Disease selectById(int Id) {
        Disease disease = diseaseMapper.selectByPrimaryKey(Id);
        return disease;
    }

    public List<Disease> list() {
        DiseaseExample diseaseExample=new DiseaseExample();
        DiseaseExample.Criteria criteria = diseaseExample.createCriteria();
        criteria.andParentIdNotEqualTo(0);
        List<Disease> disease = diseaseMapper.selectByExample(diseaseExample);
        return disease;
    }

    public int modify(Disease disease) {
        int result = diseaseMapper.updateByPrimaryKeySelective(disease);
        return result;
    }

    public int delete(int id) {
        int result = diseaseMapper.deleteByPrimaryKey(id);
        return result;
    }

    public int add(Disease disease) {
        int result = diseaseMapper.insert(disease);
        return result;
    }
}
