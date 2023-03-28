package com.iyf.salesledger.model;

import java.math.BigDecimal;
import java.util.Date;

import lombok.Data;

@Data
public class SalesLedger {
	private long sales_id;
    private Long emp_id;
    private String tech_support;
    private String extra_expense;
    private long extra_expense_amount;
    private String job_level;
    private String job_role;
    private String job_field;
    private String baby_leave_comments;
    private String emp_type;
    private String i_c_class;
    private String i_c_company_name;
    private String payday;
    private String recent_amount_history;
    private String modifier;
    //인력원장
    //private Long emp_id; 키값 중복
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
    //인력pool
    //private long emp_pool_id; 키값 중복
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
	//거래처
	//private long client_id; 키값 중복
	private String sales_source;
	private String client;
	private String subcontract;
	private String project_name;
	private String business_department;
	private String business_manager;
	//서비스 로직용 필드
	private long chungu;
	private long nuzukChungu;
	private long zanekChungu;
	private long nuzukWonga;
	private long zanekWonga;
	private long chaek;
	private double iiglyul;
	private double biyul;
	private double MMhap;
	private long mm_sales_unit; //mm매출
	private long mm_purchase_unit; //mm매입
	
}
