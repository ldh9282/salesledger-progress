package com.iyf.salesledger.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class EmpResume {
	private long resume_id;
	private Long emp_pool_id;
	private String file_name;
	private Date file_regdate;
    //업로드용
    private MultipartFile file;
}
