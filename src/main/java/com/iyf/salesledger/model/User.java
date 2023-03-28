package com.iyf.salesledger.model;

import lombok.Data;

@Data
public class User {
	private String username;
	private String password;
	private String authority;
	private String name;
	private String company;
	private String permit;
}
