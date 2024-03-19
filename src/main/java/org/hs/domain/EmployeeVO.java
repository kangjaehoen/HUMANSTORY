package org.hs.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class EmployeeVO {
	private int empNum;
	private String empName;
	private String job;
	private int phoneNum;
	private Date hireDate;
	private String email;
	private int annualLeaveNum;
	private String address;
	private int workDate;
	private int birthDate;
	private String pw;
	private int deptNum;
	private int adminNum;
	private int authNum;
}
