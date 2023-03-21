package com.urms.rli.vo;

import java.sql.Timestamp;

public class RliVo {

	/* 검색 조건 관련 변수 */
	private String clear_now; // 진행상태
	private String sys_info_nm; // 상세시스템명
	private String req_type; // 요청유형
	private String req_nm; // 요청자명
	private String user_id; // 작업자명
	private String req_title; // 제목
	private String req_con; // 내용
	private Timestamp req_dttm; // 요청일
	private Timestamp result_reg_dttm; // 작업완료일
	
	/* 프로젝트 관련 변수 */
	private String sys_nm;
	private String sys_use;
	private String sys_info_use;
	
	/* Getter&Setter */
	public String getClear_now() {
		return clear_now;
	}
	public void setClear_now(String clear_now) {
		this.clear_now = clear_now;
	}
	public String getSys_info_nm() {
		return sys_info_nm;
	}
	public void setSys_info_nm(String sys_info_nm) {
		this.sys_info_nm = sys_info_nm;
	}
	public String getReq_type() {
		return req_type;
	}
	public void setReq_type(String req_type) {
		this.req_type = req_type;
	}
	public String getReq_nm() {
		return req_nm;
	}
	public void setReq_nm(String req_nm) {
		this.req_nm = req_nm;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReq_title() {
		return req_title;
	}
	public void setReq_title(String req_title) {
		this.req_title = req_title;
	}
	public String getReq_con() {
		return req_con;
	}
	public void setReq_con(String req_con) {
		this.req_con = req_con;
	}
	public Timestamp getReq_dttm() {
		return req_dttm;
	}
	public void setReq_dttm(Timestamp req_dttm) {
		this.req_dttm = req_dttm;
	}
	public Timestamp getResult_reg_dttm() {
		return result_reg_dttm;
	}
	public void setResult_reg_dttm(Timestamp result_reg_dttm) {
		this.result_reg_dttm = result_reg_dttm;
	}
	public String getSys_nm() {
		return sys_nm;
	}
	public void setSys_nm(String sys_nm) {
		this.sys_nm = sys_nm;
	}
	public String getSys_use() {
		return sys_use;
	}
	public void setSys_use(String sys_use) {
		this.sys_use = sys_use;
	}
	public String getSys_info_use() {
		return sys_info_use;
	}
	public void setSys_info_use(String sys_info_use) {
		this.sys_info_use = sys_info_use;
	}
	
	/* Constructor */
	public RliVo() {
		super();
	}
	
	public RliVo(String sys_info_nm, String sys_nm, String sys_use, String sys_info_use) {
		super();
		this.sys_info_nm = sys_info_nm;
		this.sys_nm = sys_nm;
		this.sys_use = sys_use;
		this.sys_info_use = sys_info_use;
	}
	
	public RliVo(String clear_now, String sys_info_nm, String req_type, String req_nm, String user_id,
			String req_title, String req_con, Timestamp req_dttm, Timestamp result_reg_dttm) {
		super();
		this.clear_now = clear_now;
		this.sys_info_nm = sys_info_nm;
		this.req_type = req_type;
		this.req_nm = req_nm;
		this.user_id = user_id;
		this.req_title = req_title;
		this.req_con = req_con;
		this.req_dttm = req_dttm;
		this.result_reg_dttm = result_reg_dttm;
	}
	
	/* toString */
	@Override
	public String toString() {
		return "RliVo [clear_now=" + clear_now + ", sys_info_nm=" + sys_info_nm + ", req_type="
				+ req_type + ", req_nm=" + req_nm + ", user_id=" + user_id + ", req_title=" + req_title + ", req_con="
				+ req_con + ", req_dttm=" + req_dttm + ", result_reg_dttm=" + result_reg_dttm + ", sys_nm=" + sys_nm
				+ ", sys_use=" + sys_use + ", sys_info_use=" + sys_info_use + "]";
	}
}
