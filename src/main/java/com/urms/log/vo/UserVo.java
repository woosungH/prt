package com.urms.log.vo;

import java.sql.Timestamp;

public class UserVo {
//fields
	private String user_id; //사용자ID
	private String user_type; //권한
	private String user_nm; //이름
	private String org_type; //소속
	private String user_tel; //연락처
	private String email; //이메일
	private String user_pw; //비밀번호
	private String use_yn; //사용여부
	private Timestamp mod_dttm; //수정일시
	
//constructor
	public UserVo(){}
	
	public UserVo(String user_id, String user_type, String user_nm, String org_type, String user_tel, String email,
			String user_pw, String use_yn, Timestamp mod_dttm) {
		super();
		this.user_id = user_id;
		this.user_type = user_type;
		this.user_nm = user_nm;
		this.org_type = org_type;
		this.user_tel = user_tel;
		this.email = email;
		this.user_pw = user_pw;
		this.use_yn = use_yn;
		this.mod_dttm = mod_dttm;
	}

//getter/setter
	
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

	public String getUser_nm() {
		return user_nm;
	}

	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}

	public String getOrg_type() {
		return org_type;
	}

	public void setOrg_type(String org_type) {
		this.org_type = org_type;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}

	public Timestamp getMod_dttm() {
		return mod_dttm;
	}

	public void setMod_dttm(Timestamp mod_dttm) {
		this.mod_dttm = mod_dttm;
	}

//toString
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_type=" + user_type + ", user_nm=" + user_nm + ", org_type="
				+ org_type + ", user_tel=" + user_tel + ", email=" + email + ", user_pw=" + user_pw + ", use_yn="
				+ use_yn + ", mod_dttm=" + mod_dttm + "]";
	}
	
}
