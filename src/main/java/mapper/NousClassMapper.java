package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.NousClass;
import pojo.NousClassExample;

public interface NousClassMapper {
    int countByExample(NousClassExample example);

    int deleteByExample(NousClassExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(NousClass record);

    int insertSelective(NousClass record);

    List<NousClass> selectByExample(NousClassExample example);

    NousClass selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") NousClass record, @Param("example") NousClassExample example);

    int updateByExample(@Param("record") NousClass record, @Param("example") NousClassExample example);

    int updateByPrimaryKeySelective(NousClass record);

    int updateByPrimaryKey(NousClass record);
}