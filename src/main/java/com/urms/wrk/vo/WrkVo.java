package com.urms.wrk.vo;

public class WrkVo {
//fields
	private String wrk_id; //작업ID
	private String user_id; //사용자ID
	private String req_id; //요청ID
	private int user_grade; //권한
	private String wrk_un; //작업자
	private String wrk_st; //진행상태
	private String pla_con; //조치내용
	private String wrk_con; //작업내용
	private String reg_nm; //등록자
	private String mod_nm; //수정자
	private String reg_dttm; //등록일시
	private String mod_dttm; //수정일시
	private String acp_dttm; //접수일시
	private String st_dttm; //작업시작
	private String due_dttm; //직업완료 예정일
	private String end_dttm; //작업종료
	
//constructor
	public WrkVo() {}
	public WrkVo(String wrk_id, String user_id, String req_id, int user_grade, String wrk_un, String wrk_st,
			String pla_con, String wrk_con, String reg_nm, String mod_nm, String reg_dttm, String mod_dttm,
			String acp_dttm, String st_dttm, String due_dttm, String end_dttm) {
		super();
		this.wrk_id = wrk_id;
		this.user_id = user_id;
		this.req_id = req_id;
		this.user_grade = user_grade;
		this.wrk_un = wrk_un;
		this.wrk_st = wrk_st;
		this.pla_con = pla_con;
		this.wrk_con = wrk_con;
		this.reg_nm = reg_nm;
		this.mod_nm = mod_nm;
		this.reg_dttm = reg_dttm;
		this.mod_dttm = mod_dttm;
		this.acp_dttm = acp_dttm;
		this.st_dttm = st_dttm;
		this.due_dttm = due_dttm;
		this.end_dttm = end_dttm;
	}
	
//getter/setter
	public String getWrk_id() {
		return wrk_id;
	}
	public void setWrk_id(String wrk_id) {
		this.wrk_id = wrk_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReq_id() {
		return req_id;
	}
	public void setReq_id(String req_id) {
		this.req_id = req_id;
	}
	public int getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(int user_grade) {
		this.user_grade = user_grade;
	}
	public String getWrk_un() {
		return wrk_un;
	}
	public void setWrk_un(String wrk_un) {
		this.wrk_un = wrk_un;
	}
	public String getWrk_st() {
		return wrk_st;
	}
	public void setWrk_st(String wrk_st) {
		this.wrk_st = wrk_st;
	}
	public String getPla_con() {
		return pla_con;
	}
	public void setPla_con(String pla_con) {
		this.pla_con = pla_con;
	}
	public String getWrk_con() {
		return wrk_con;
	}
	public void setWrk_con(String wrk_con) {
		this.wrk_con = wrk_con;
	}
	public String getReg_nm() {
		return reg_nm;
	}
	public void setReg_nm(String reg_nm) {
		this.reg_nm = reg_nm;
	}
	public String getMod_nm() {
		return mod_nm;
	}
	public void setMod_nm(String mod_nm) {
		this.mod_nm = mod_nm;
	}
	public String getReg_dttm() {
		return reg_dttm;
	}
	public void setReg_dttm(String reg_dttm) {
		this.reg_dttm = reg_dttm;
	}
	public String getMod_dttm() {
		return mod_dttm;
	}
	public void setMod_dttm(String mod_dttm) {
		this.mod_dttm = mod_dttm;
	}
	public String getAcp_dttm() {
		return acp_dttm;
	}
	public void setAcp_dttm(String acp_dttm) {
		this.acp_dttm = acp_dttm;
	}
	public String getSt_dttm() {
		return st_dttm;
	}
	public void setSt_dttm(String st_dttm) {
		this.st_dttm = st_dttm;
	}
	public String getDue_dttm() {
		return due_dttm;
	}
	public void setDue_dttm(String due_dttm) {
		this.due_dttm = due_dttm;
	}
	public String getEnd_dttm() {
		return end_dttm;
	}
	public void setEnd_dttm(String end_dttm) {
		this.end_dttm = end_dttm;
	}

//toString
	@Override
	public String toString() {
		return "WrkVo [wrk_id=" + wrk_id + ", user_id=" + user_id + ", req_id=" + req_id + ", user_grade=" + user_grade
				+ ", wrk_un=" + wrk_un + ", wrk_st=" + wrk_st + ", pla_con=" + pla_con + ", wrk_con=" + wrk_con
				+ ", reg_nm=" + reg_nm + ", mod_nm=" + mod_nm + ", reg_dttm=" + reg_dttm + ", mod_dttm=" + mod_dttm
				+ ", acp_dttm=" + acp_dttm + ", st_dttm=" + st_dttm + ", due_dttm=" + due_dttm + ", end_dttm="
				+ end_dttm + "]";
	}
	
}
