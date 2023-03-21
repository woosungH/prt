package com.urms.req.vo;

public class ReqVo {
//fields
	private String req_id; //요청ID
	private String sys_info_nm; //시스템상세명
	private String req_no; //고객번호
	private String req_type; //요청유형
	private String req_title; //요청제목
	private String req_con; //요청내용
	private String req_file; //요청참고파일
	private String req_nm; //요청자
	private String reg_nm; //등록자
	private String mod_nm; //수정자
	private String req_end_dttm; //완료희망일
	private String req_dttm; //요청일시
	private String reg_dttm; //등록일시
	private String mod_dttm; //수정일시
	private String clear_st_dttm; //처리시작
	private String clear_due_dttm; //처리완료예정
		
//constructor
	public ReqVo() {}
	public ReqVo(String req_id, String sys_info_nm, String req_no, String req_type, String req_title, String req_con,
				String req_file, String req_nm, String reg_nm, String mod_nm, String req_end_dttm, String req_dttm,
				String reg_dttm, String mod_dttm, String clear_st_dttm, String clear_due_dttm) {
			super();
			this.req_id = req_id;
			this.sys_info_nm = sys_info_nm;
			this.req_no = req_no;
			this.req_type = req_type;
			this.req_title = req_title;
			this.req_con = req_con;
			this.req_file = req_file;
			this.req_nm = req_nm;
			this.reg_nm = reg_nm;
			this.mod_nm = mod_nm;
			this.req_end_dttm = req_end_dttm;
			this.req_dttm = req_dttm;
			this.reg_dttm = reg_dttm;
			this.mod_dttm = mod_dttm;
			this.clear_st_dttm = clear_st_dttm;
			this.clear_due_dttm = clear_due_dttm;
		}
	
//getter/setter
	public String getReq_id() {
		return req_id;
	}
	public void setReq_id(String req_id) {
		this.req_id = req_id;
	}
	public String getSys_info_nm() {
		return sys_info_nm;
	}
	public void setSys_info_nm(String sys_info_nm) {
		this.sys_info_nm = sys_info_nm;
	}
	public String getReq_no() {
		return req_no;
	}
	public void setReq_no(String req_no) {
		this.req_no = req_no;
	}
	public String getReq_type() {
		return req_type;
	}
	public void setReq_type(String req_type) {
		this.req_type = req_type;
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
	public String getReq_file() {
		return req_file;
	}
	public void setReq_file(String req_file) {
		this.req_file = req_file;
	}
	public String getReq_nm() {
		return req_nm;
	}
	public void setReq_nm(String req_nm) {
		this.req_nm = req_nm;
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
	public String getReq_end_dttm() {
		return req_end_dttm;
	}
	public void setReq_end_dttm(String req_end_dttm) {
		this.req_end_dttm = req_end_dttm;
	}
	public String getReq_dttm() {
		return req_dttm;
	}
	public void setReq_dttm(String req_dttm) {
		this.req_dttm = req_dttm;
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
	
//toString
	@Override
	public String toString() {
		return "ReqVo [req_id=" + req_id + ", sys_info_nm=" + sys_info_nm + ", req_no=" + req_no + ", req_type="
				+ req_type + ", req_title=" + req_title + ", req_con=" + req_con + ", req_file=" + req_file
				+ ", req_nm=" + req_nm + ", reg_nm=" + reg_nm + ", mod_nm=" + mod_nm + ", req_end_dttm=" + req_end_dttm
				+ ", req_dttm=" + req_dttm + ", reg_dttm=" + reg_dttm + ", mod_dttm=" + mod_dttm + ", clear_st_dttm="
				+ clear_st_dttm + ", clear_due_dttm=" + clear_due_dttm + "]";
	}
}
