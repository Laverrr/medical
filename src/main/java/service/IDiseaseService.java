package service;

import org.springframework.stereotype.Service;
import pojo.Disease;

import java.util.List;

/**
 * Created by L on 2018/1/6.
 */
@Service
public interface IDiseaseService {
    List<Disease> selectByParentId(int parentId);

    Disease selectById(int Id);

    List<Disease> list();

    int modify(Disease disease);

    int delete(int id);

    int add(Disease disease);
}
