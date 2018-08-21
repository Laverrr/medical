package service;

import org.springframework.stereotype.Service;
import pojo.Record;

import java.util.List;

/**
 * Created by L on 2018/1/10.
 */
@Service
public interface IRecordService {

    int add(Record record);

    int modify(Record record);

    int delete(int id);

    Record selectById(int id);

    List<Record> selectByFamilyId(int familyId);
}
