package com.iyf.salesledger.model;

import java.math.BigDecimal;
import java.util.Date;

import lombok.Data;

@Data
public class EmpLedger {

	private long emp_id;
    private Long emp_pool_id;
    private Long client_id;
    private String company;
    private Date assign_date;
    private Date end_date;
    private double sales_mm;
    private double purchase_mm;
    private long sales_unit;
    private long purchase_unit;
    private String comments;
    private Date resume_submit_date;
    private Date resign_date;
    private Date i_contract_date;
    private Date c_contract_date;
    private String progress;
    private String progress_reason;
    private String result;
    private String result_reason;
    private String issues;
    //empPool 에서 받아올 추가필드
    private String sourcing_manager;
	private String name;
	private String phonenumber;
	private Date birthdate;
	private String email;
	private String address;
	private String education;
	private String school_name;
	private String major;
	private String career_years;
	private String career_field;
	private String career_level;
	private String project_assign;
	private String del;
	//client에서 받아올 추가 필드
	private String sales_source;
	private String client;
	private String subcontract;
	private String project_name;
	private String business_department;
	private String business_manager;
}
