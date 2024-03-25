package org.hs.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
public class EmpCriteria {

  private int emppageNum;
  private int empamount;
  
  private String type;
  private String keyword;

  public EmpCriteria() {
    this(1, 10);
  }

  public EmpCriteria(int emppageNum, int empamount) {
    this.emppageNum = emppageNum;
    this.empamount = empamount;
  }
  
  public String[] getTypeArr() {
    
    return type == null? new String[] {}: type.split("");
  }
}
