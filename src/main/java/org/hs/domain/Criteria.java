package org.hs.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
public class Criteria {

	private int deptpageNum;
	private int deptamount;

	private String type;
	private String keyword;

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public Criteria(int deptpageNum, int deptamount) {
		this.deptpageNum = deptpageNum;
		this.deptamount = deptamount;
	}

	public String[] getTypeArr() {

		return type == null ? new String[] {} : type.split("");
	}
}
