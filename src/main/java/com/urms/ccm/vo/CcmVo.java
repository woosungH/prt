package com.urms.ccm.vo;

import java.sql.Timestamp;

public class CcmVo {

	/* 코드관리 */
	private String code_type;
	private String code_nm;
	
	/* 코드관리상세 */
	private String code_info_type;
	private String code_info_nm;
	private String use_yn;
	private String reg_nm;
	private String mod_nm;
	private Timestamp reg_dttm;
	private Timestamp mod_dttm;
	
	
	public String getCode_type() {
		return code_type;
	}
	public void setCode_type(String code_type) {
		this.code_type = code_type;
	}
	public String getCode_nm() {
		return code_nm;
	}
	public void setCode_nm(String code_nm) {
		this.code_nm = code_nm;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
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
	public Timestamp getReg_dttm() {
		return reg_dttm;
	}
	public void setReg_dttm(Timestamp reg_dttm) {
		this.reg_dttm = reg_dttm;
	}
	public Timestamp getMod_dttm() {
		return mod_dttm;
	}
	public void setMod_dttm(Timestamp mod_dttm) {
		this.mod_dttm = mod_dttm;
	}
	public String getCode_info_type() {
		return code_info_type;
	}
	public void setCode_info_type(String code_info_type) {
		this.code_info_type = code_info_type;
	}
	public String getCode_info_nm() {
		return code_info_nm;
	}
	public void setCode_info_nm(String code_info_nm) {
		this.code_info_nm = code_info_nm;
	}
	
	public CcmVo(String code_type, String code_nm, String use_yn, String reg_nm, String mod_nm, Timestamp reg_dttm,
			Timestamp mod_dttm, String code_info_type, String code_info_nm) {
		super();
		this.code_type = code_type;
		this.code_nm = code_nm;
		this.use_yn = use_yn;
		this.reg_nm = reg_nm;
		this.mod_nm = mod_nm;
		this.reg_dttm = reg_dttm;
		this.mod_dttm = mod_dttm;
		this.code_info_type = code_info_type;
		this.code_info_nm = code_info_nm;
	}
	
	public CcmVo() {
		super();
	}
	
	@Override
	public String toString() {
		return "CcmVo [code_type=" + code_type + ", code_nm=" + code_nm + ", use_yn=" + use_yn + ", reg_nm=" + reg_nm
				+ ", mod_nm=" + mod_nm + ", reg_dttm=" + reg_dttm + ", mod_dttm=" + mod_dttm + ", code_info_type="
				+ code_info_type + ", code_info_nm=" + code_info_nm + "]";
	}

	
}
