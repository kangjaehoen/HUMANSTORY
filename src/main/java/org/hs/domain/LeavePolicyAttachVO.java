package org.hs.domain;

import lombok.Data;

@Data
public class LeavePolicyAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private int lpNum;
}
