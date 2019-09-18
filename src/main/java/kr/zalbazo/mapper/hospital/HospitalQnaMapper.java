package kr.zalbazo.mapper.hospital;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.zalbazo.model.content.Content;
import kr.zalbazo.model.hospital.HospitalQnaVO;

public interface HospitalQnaMapper {
	
	public int insertContent(Content content);
	public int insertQna(HospitalQnaVO hospitalQnaVO);
	
	public int deleteQna(Long contentId);
	public int deleteContent(Long contentId);
	
	public List<HospitalQnaVO> getQnaList(@Param("hospitalId") Long hospitalId);

}
