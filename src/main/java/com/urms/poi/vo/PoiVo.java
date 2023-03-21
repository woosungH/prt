package com.urms.poi.vo;

public class PoiVo {
	
//fields
	private String req_con;
	private String org_code;
	private String req_nm;
	private String clear_con;
	private String req_dttm;
	private String clear_due_dttm;
	private String clear_end_dttm;
	private String req_type;
	private String sys_info;
	
//constructor
	public PoiVo(String req_con, String org_code, String req_nm, String clear_con, String req_dttm,
			String clear_due_dttm, String clear_end_dttm, String req_type, String sys_info) {
		super();
		this.req_con = req_con;
		this.org_code = org_code;
		this.req_nm = req_nm;
		this.clear_con = clear_con;
		this.req_dttm = req_dttm;
		this.clear_due_dttm = clear_due_dttm;
		this.clear_end_dttm = clear_end_dttm;
		this.req_type = req_type;
		this.sys_info = sys_info;
	}

//getter/setter
	public String getReq_con() {
		return req_con;
	}

	public void setReq_con(String req_con) {
		this.req_con = req_con;
	}

	public String getOrg_code() {
		return org_code;
	}

	public void setOrg_code(String org_code) {
		this.org_code = org_code;
	}

	public String getReq_nm() {
		return req_nm;
	}

	public void setReq_nm(String req_nm) {
		this.req_nm = req_nm;
	}

	public String getClear_con() {
		return clear_con;
	}

	public void setClear_con(String clear_con) {
		this.clear_con = clear_con;
	}

	public String getReq_dttm() {
		return req_dttm;
	}

	public void setReq_dttm(String req_dttm) {
		this.req_dttm = req_dttm;
	}

	public String getClear_due_dttm() {
		return clear_due_dttm;
	}

	public void setClear_due_dttm(String clear_due_dttm) {
		this.clear_due_dttm = clear_due_dttm;
	}

	public String getClear_end_dttm() {
		return clear_end_dttm;
	}

	public void setClear_end_dttm(String clear_end_dttm) {
		this.clear_end_dttm = clear_end_dttm;
	}

	public String getReq_type() {
		return req_type;
	}

	public void setReq_type(String req_type) {
		this.req_type = req_type;
	}

	public String getSys_info() {
		return sys_info;
	}

	public void setSys_info(String sys_info) {
		this.sys_info = sys_info;
	}

//toString
	@Override
	public String toString() {
		return "PoiVo [req_con=" + req_con + ", org_code=" + org_code + ", req_nm=" + req_nm + ", clear_con="
				+ clear_con + ", req_dttm=" + req_dttm + ", clear_due_dttm=" + clear_due_dttm + ", clear_end_dttm="
				+ clear_end_dttm + ", req_type=" + req_type + ", sys_info=" + sys_info + "]";
	}
}
