package org.hs.domain;

import lombok.Data;

@Data
public class LeavePromoteAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private int lprNum;
}
