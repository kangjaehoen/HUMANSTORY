package org.hs.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class EmployeeVO {
   private String empNum;
   private String empName;
   private String pw;
   private String job; // 직책임.
   private int phoneNum;
   private Date hiredate;
   private String email;
   private int annualLeaveNum;
   private String address;
   private int workDate; // 근무일
   private int birthDate;
   private int adminNum;
   private int authNum;
   private int deptNum;
   private List<LeaveRecordsVO> leaveRecords;

}
