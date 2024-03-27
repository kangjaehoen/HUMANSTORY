package org.hs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.hs.domain.Criteria;
import org.hs.domain.LeavePromoteVO;

@Mapper
public interface LeavePromoteMapper {
	public void insert(LeavePromoteVO vo);

	public List<LeavePromoteVO> getList(Criteria cri);

	public LeavePromoteVO getDetail(int lprNum);

	public int update(LeavePromoteVO vo);

	public int delete(int lprNum);

	public int listTotalCount(Criteria cri);
}
