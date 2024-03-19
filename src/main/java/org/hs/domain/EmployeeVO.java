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
   private String job; // 직책임.
   private int phoneNum;
   private Date hiredate;
   private String email;
   private int annualLeaveNum;
   private String address;
   private int workDate;
   private int birthDate;
   private int adminId;
   private int authNum;
   private int deptNum;
}
