package com.iyf.salesledger.model;

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
	private String recent_amount_history;
	private String modifier;
	private int payday;
	private String del;
	
}
