package org.hs.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class LeaveTypeVO {
    private Date leaveDate;
    private int leaveNum;
}
