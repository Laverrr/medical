package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Nous;
import pojo.NousExample;

public interface NousMapper {
    int countByExample(NousExample example);

    int deleteByExample(NousExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Nous record);

    int insertSelective(Nous record);

    List<Nous> selectByExampleWithBLOBs(NousExample example);

    List<Nous> selectByExample(NousExample example);

    Nous selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Nous record, @Param("example") NousExample example);

    int updateByExampleWithBLOBs(@Param("record") Nous record, @Param("example") NousExample example);

    int updateByExample(@Param("record") Nous record, @Param("example") NousExample example);

    int updateByPrimaryKeySelective(Nous record);

    int updateByPrimaryKeyWithBLOBs(Nous record);

    int updateByPrimaryKey(Nous record);
}