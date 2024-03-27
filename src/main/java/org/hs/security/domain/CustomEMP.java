package org.hs.security.domain;

import java.util.Collection;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.hs.domain.EmployeeVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomEMP extends User {
	private static final long serialVersionUID =1L;
	
	private EmployeeVO emp;
	
	
	
	public CustomEMP(String empNum, String pw, 
			Collection<? extends GrantedAuthority> authorities) {
		super(empNum, pw, authorities);
	}
	public CustomEMP(EmployeeVO vo) {

		super(vo.getEmpName(),vo.getPw(),vo.getAuthList().stream().map(auth->new SimpleGrantedAuthority(auth.getAuth()))
				.collect(Collectors.toList()));

		this.emp = vo;
	}
}
