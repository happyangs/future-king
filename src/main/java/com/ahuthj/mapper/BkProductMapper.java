package com.ahuthj.mapper;

import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BkProductMapper {
    long countByExample(BkProductExample example);

    int deleteByExample(BkProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(BkProduct record);

    int insertSelective(BkProduct record);

    List<BkProduct> selectByExample(BkProductExample example);

    BkProduct selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") BkProduct record, @Param("example") BkProductExample example);

    int updateByExample(@Param("record") BkProduct record, @Param("example") BkProductExample example);

    int updateByPrimaryKeySelective(BkProduct record);

    int updateByPrimaryKey(BkProduct record);
}