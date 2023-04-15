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
    private String department;
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
    private String issues;
    private String del;
}
