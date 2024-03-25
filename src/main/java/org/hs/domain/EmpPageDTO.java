package org.hs.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class EmpPageDTO {

  private int startPage;
  private int endPage;
  private boolean prev, next;

  private int total;
  private EmpCriteria cri;

  public EmpPageDTO(EmpCriteria cri, int total) {

    this.cri = cri;
    this.total = total;
    System.out.println("total: " + total);
    this.endPage = (int) (Math.ceil(cri.getEmppageNum() / 10.0)) * 10;
//    System.out.println("endPage"+endPage);
    this.startPage = this.endPage - 9;
//    System.out.println("startPage"+startPage);
    int realEnd = (int) (Math.ceil((total * 1.0) / cri.getEmpamount()));
//    System.out.println("realEnd"+realEnd);

    if (realEnd <= this.endPage) {
      this.endPage = realEnd;
    }

    this.prev = this.startPage > 1;

    this.next = this.endPage < realEnd;
//    System.out.println("°á°ú: " + this);
  }
  
}

