package org.hs.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class EmployeeVO {
   private int empNum;
   private String empName;
   private String pw;
   private String job; // ��å��.
   private int phoneNum;
   private Date hireDate;
   private String email;
   private int annualLeaveNum;
   private String address;
   private int workDate; // �ٹ���
   private int birthDate;
   private int adminNum;
   private int authNum;
   private int deptNum;
   private DeptVO department; 
   
}