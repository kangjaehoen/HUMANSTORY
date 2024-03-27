package org.hs.security;

import org.hs.domain.EmployeeVO;
import org.hs.mapper.EmpMapper;
import org.hs.security.domain.CustomEMP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private EmpMapper mapper;
	@Override
	public UserDetails loadUserByUsername(String empNum) throws UsernameNotFoundException {

		log.warn(empNum);
		EmployeeVO vo=mapper.authread(empNum);
		log.warn("quried by member mapper:"+vo);
//		return null;
		return vo==null?null: new CustomEMP(vo);
	}

}
