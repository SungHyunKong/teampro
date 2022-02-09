package com.ts.model;

public class MemberVO {

	private String worker_code;
	private String worker_id;
	private String worker_name;
	private String worker_birth;
	private String worker_sung;
	private String worker_rank;
	private String worker_dpname;

	public MemberVO() {
	}

	public MemberVO(String worker_code, String worker_id, String worker_name, String worker_birth, String worker_sung,
			String worker_rank, String worker_dpname) {
		super();
		this.worker_code = worker_code;
		this.worker_id = worker_id;
		this.worker_name = worker_name;
		this.worker_birth = worker_birth;
		this.worker_sung = worker_sung;
		this.worker_rank = worker_rank;
		this.worker_dpname = worker_dpname;
	}

	public final String getWorker_code() {
		return worker_code;
	}

	public final void setWorker_code(String worker_code) {
		this.worker_code = worker_code;
	}

	public final String getWorker_id() {
		return worker_id;
	}

	public final void setWorker_id(String worker_id) {
		this.worker_id = worker_id;
	}

	public final String getWorker_name() {
		return worker_name;
	}

	public final void setWorker_name(String worker_name) {
		this.worker_name = worker_name;
	}

	public final String getWorker_birth() {
		return worker_birth;
	}

	public final void setWorker_birth(String worker_birth) {
		this.worker_birth = worker_birth;
	}

	public final String getWorker_sung() {
		return worker_sung;
	}

	public final void setWorker_sung(String worker_sung) {
		this.worker_sung = worker_sung;
	}

	public final String getWorker_rank() {
		return worker_rank;
	}

	public final void setWorker_rank(String worker_rank) {
		this.worker_rank = worker_rank;
	}

	public final String getWorker_dpname() {
		return worker_dpname;
	}

	public final void setWorker_dpname(String worker_dpname) {
		this.worker_dpname = worker_dpname;
	}

	@Override
	public String toString() {
		return "MemberVO [worker_code=" + worker_code + ", worker_id=" + worker_id + ", worker_name=" + worker_name
				+ ", worker_birth=" + worker_birth + ", worker_sung=" + worker_sung + ", worker_rank=" + worker_rank
				+ ", worker_dpname=" + worker_dpname + "]";
	}

}
