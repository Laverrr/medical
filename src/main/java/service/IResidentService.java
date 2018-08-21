package service;

import org.springframework.stereotype.Service;
import pojo.Resident;

import java.util.List;

/**
 * Created by L on 2018/1/8.
 */
@Service
public interface IResidentService {

    List<Resident> selectByFamilyId(int familyId);

    int add(Resident resident);

    int modify(Resident resident);

    Resident selectById(int id);

    int delete(int id);


}
