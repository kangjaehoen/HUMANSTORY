package org.hs.domain;

import java.util.Date;
<<<<<<< HEAD
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class EmployeeVO {
   private String empNum;
   private String empName;
   private String pw;
   private String job; // Á÷Ã¥ÀÓ.
   private int phoneNum;
   private Date hireDate;
   private String email;
   private int annualLeaveNum;
   private String address;
   private int workDate; // ±Ù¹«ÀÏ
   private int birthDate;
   private int adminNum;
   private int authNum;
   private int deptNum;
   private  List<DeptVO>  department; 
   private boolean enabled;
   private List<AuthVO> authList;
};
=======

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class EmployeeVO {
   private int empNum;
   private String empName;
   private String pw;
   private String job; // ì§ì±…ì„.
   private int phoneNum;
   private Date hiredate;
   private String email;
   private int annualLeaveNum;
   private String address;
   private int workDate; // ê·¼ë¬´ì¼
   private int birthDate;
   private int adminNum;
   private int authNum;
   private int deptNum;
}
>>>>>>> refs/heads/main
