package org.hs.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class EmployeeVO {
	private int empNum;
	private String empName;
	private String pw;
	private String job;
	private int phoneNum;
	private int annualLeaveNum;
	private int workDate;
	private int birthDate;
	private int adminNum;
	private int authNum;
	private int deptNum;
	private Date hireDate;
	private String email;
	private String address;
}
