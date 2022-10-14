package com.hhj.SazaShopping.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;



@Data
public class MemberDTO {
	public String mid;
	public String mpassword;
	public String memail;
	public String mname;
	public String mphone;
	public String memberaddr1;
	public String memberaddr2;
	public String memberaddr3;
	
	
	// 관리자 구분(0:일반사용자, 1:관리자)
	private int adminCk;
	
	public String mpr;
	public String maccount;
	private MultipartFile mfile;
	private String mfilename;
	private String mrole;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMemberaddr1() {
		return memberaddr1;
	}
	public void setMemberaddr1(String memberaddr1) {
		this.memberaddr1 = memberaddr1;
	}
	public String getMemberaddr2() {
		return memberaddr2;
	}
	public void setMemberaddr2(String memberaddr2) {
		this.memberaddr2 = memberaddr2;
	}
	public String getMemberaddr3() {
		return memberaddr3;
	}
	public void setMemberaddr3(String memberaddr3) {
		this.memberaddr3 = memberaddr3;
	}
	public int getAdminCk() {
		return adminCk;
	}
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	public String getMpr() {
		return mpr;
	}
	public void setMpr(String mpr) {
		this.mpr = mpr;
	}
	public String getMaccount() {
		return maccount;
	}
	public void setMaccount(String maccount) {
		this.maccount = maccount;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	public String getMfilename() {
		return mfilename;
	}
	public void setMfilename(String mfilename) {
		this.mfilename = mfilename;
	}
	public String getMrole() {
		return mrole;
	}
	public void setMrole(String mrole) {
		this.mrole = mrole;
	}
	@Override
	public String toString() {
		return "MemberDTO [mid=" + mid + ", mpassword=" + mpassword + ", memail=" + memail + ", mname=" + mname
				+ ", mphone=" + mphone + ", memberaddr1=" + memberaddr1 + ", memberaddr2=" + memberaddr2
				+ ", memberaddr3=" + memberaddr3 + ", adminCk=" + adminCk + ", mpr=" + mpr + ", maccount=" + maccount
				+ ", mfile=" + mfile + ", mfilename=" + mfilename + ", mrole=" + mrole + "]";
	}

	
	
}
