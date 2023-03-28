package com.iyf.salesledger.model;

import lombok.Data;

@Data
public class Client {
	private long client_id;
	private String sales_source;
	private String client;
	private String subcontract;
	private String project_name;
	private String business_department;
	private String business_manager;
}
