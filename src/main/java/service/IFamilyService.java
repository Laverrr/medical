package service;

import org.springframework.stereotype.Service;
import pojo.Family;

import java.util.List;

/**
 * Created by L on 2018/1/8.
 */
@Service
public interface IFamilyService {

    List<Family> list();

    int add(Family family);

    int modify(Family family);

    Family selectById(int familyId);

    int deleteById(int familyId);
}
