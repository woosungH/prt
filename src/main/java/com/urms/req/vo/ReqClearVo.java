package com.urms.req.vo;

public class ReqClearVo {

//fields
	private String clear_id; //처리ID
	private String req_id; //요청ID
	private String user_id;//사용자ID
	private String user_type; //사용자유형
	private String clear_now; //진행상태
	private String clear_con; //처리내용
	private String mod_nm; //수정자
	private String mod_dttm; //수정일시
	private String clear_st_dttm; //처리시작
	private String clear_due_dttm; //처리시작
	private String clear_end_dttm; //처리시작
	
//constructor
	public ReqClearVo() {}
	public ReqClearVo(String clear_id, String req_id, String user_id, String user_type, String clear_now,
			String clear_con, String mod_nm, String mod_dttm, String clear_st_dttm, String clear_due_dttm,
			String clear_end_dttm) {
		super();
		this.clear_id = clear_id;
		this.req_id = req_id;
		this.user_id = user_id;
		this.user_type = user_type;
		this.clear_now = clear_now;
		this.clear_con = clear_con;
		this.mod_nm = mod_nm;
		this.mod_dttm = mod_dttm;
		this.clear_st_dttm = clear_st_dttm;
		this.clear_due_dttm = clear_due_dttm;
		this.clear_end_dttm = clear_end_dttm;
	}
	
//getter/setter
	public String getClear_id() {
		return clear_id;
	}
	public void setClear_id(String clear_id) {
		this.clear_id = clear_id;
	}
	public String getReq_id() {
		return req_id;
	}
	public void setReq_id(String req_id) {
		this.req_id = req_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getClear_now() {
		return clear_now;
	}
	public void setClear_now(String clear_now) {
		this.clear_now = clear_now;
	}
	public String getClear_con() {
		return clear_con;
	}
	public void setClear_con(String clear_con) {
		this.clear_con = clear_con;
	}
	public String getMod_nm() {
		return mod_nm;
	}
	public void setMod_nm(String mod_nm) {
		this.mod_nm = mod_nm;
	}
	public String getMod_dttm() {
		return mod_dttm;
	}
	public void setMod_dttm(String mod_dttm) {
		this.mod_dttm = mod_dttm;
	}
	public String getClear_st_dttm() {
		return clear_st_dttm;
	}
	public void setClear_st_dttm(String clear_st_dttm) {
		this.clear_st_dttm = clear_st_dttm;
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
	
//toString
	@Override
	public String toString() {
		return "ReqClearVo [clear_id=" + clear_id + ", req_id=" + req_id + ", user_id=" + user_id + ", user_type="
				+ user_type + ", clear_now=" + clear_now + ", clear_con=" + clear_con + ", mod_nm=" + mod_nm
				+ ", mod_dttm=" + mod_dttm + ", clear_st_dttm=" + clear_st_dttm + ", clear_due_dttm=" + clear_due_dttm
				+ ", clear_end_dttm=" + clear_end_dttm + "]";
	}
}
