package service.impl;

import mapper.RecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Record;
import pojo.RecordExample;
import service.IRecordService;

import java.util.List;

/**
 * Created by L on 2018/1/10.
 */
@Service("iRecordService")
public class RecordServiceImpl implements IRecordService {

    @Autowired
    private RecordMapper recordMapper;

    public int add(Record record) {
        int result = recordMapper.insert(record);
        return result;
    }

    public int modify(Record record) {
        int result = recordMapper.updateByPrimaryKeySelective(record);
        return result;
    }

    public int delete(int id) {
        int result = recordMapper.deleteByPrimaryKey(id);
        return result;
    }

    public Record selectById(int id) {
        Record record = recordMapper.selectByPrimaryKey(id);
        return record;
    }

    public List<Record> selectByFamilyId(int familyId) {
        RecordExample recordExample=new RecordExample();
        RecordExample.Criteria criteria = recordExample.createCriteria();
        criteria.andFamilyIdEqualTo(familyId);
        List<Record> records = recordMapper.selectByExample(recordExample);
        return records;
    }
}
