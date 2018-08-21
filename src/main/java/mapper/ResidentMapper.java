package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Resident;
import pojo.ResidentExample;

public interface ResidentMapper {
    int countByExample(ResidentExample example);

    int deleteByExample(ResidentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Resident record);

    int insertSelective(Resident record);

    List<Resident> selectByExampleWithBLOBs(ResidentExample example);

    List<Resident> selectByExample(ResidentExample example);

    Resident selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Resident record, @Param("example") ResidentExample example);

    int updateByExampleWithBLOBs(@Param("record") Resident record, @Param("example") ResidentExample example);

    int updateByExample(@Param("record") Resident record, @Param("example") ResidentExample example);

    int updateByPrimaryKeySelective(Resident record);

    int updateByPrimaryKeyWithBLOBs(Resident record);

    int updateByPrimaryKey(Resident record);
}