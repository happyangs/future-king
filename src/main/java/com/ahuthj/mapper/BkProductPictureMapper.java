package com.ahuthj.mapper;

import com.ahuthj.model.BkProductPicture;
import com.ahuthj.model.BkProductPictureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BkProductPictureMapper {
    long countByExample(BkProductPictureExample example);

    int deleteByExample(BkProductPictureExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(BkProductPicture record);

    int insertSelective(BkProductPicture record);

    List<BkProductPicture> selectByExample(BkProductPictureExample example);

    BkProductPicture selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") BkProductPicture record, @Param("example") BkProductPictureExample example);

    int updateByExample(@Param("record") BkProductPicture record, @Param("example") BkProductPictureExample example);

    int updateByPrimaryKeySelective(BkProductPicture record);

    int updateByPrimaryKey(BkProductPicture record);
}