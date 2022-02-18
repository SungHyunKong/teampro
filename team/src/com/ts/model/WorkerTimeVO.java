package com.ts.model;

public class WorkerTimeVO {
	private String worker_code;
	private String worker_stime;
	private String worker_etime;
	private String worker_date;
	private String worker_rank;
	public final String getWorker_code() {
		return worker_code;
	}
	public final void setWorker_code(String worker_code) {
		this.worker_code = worker_code;
	}
	public final String getWorker_stime() {
		return worker_stime;
	}
	public final void setWorker_stime(String worker_stime) {
		this.worker_stime = worker_stime;
	}
	public final String getWorker_etime() {
		return worker_etime;
	}
	public final void setWorker_etime(String worker_etime) {
		this.worker_etime = worker_etime;
	}
	public final String getWorker_date() {
		return worker_date;
	}
	public final void setWorker_date(String worker_date) {
		this.worker_date = worker_date;
	}
	public final String getWorker_rank() {
		return worker_rank;
	}
	public final void setWorker_rank(String worker_rank) {
		this.worker_rank = worker_rank;
	}
	@Override
	public String toString() {
		return "WorkerTimeVo [worker_code=" + worker_code + ", worker_stime=" + worker_stime + ", worker_etime="
				+ worker_etime + ", worker_date=" + worker_date + ", worker_rank=" + worker_rank + "]";
	}
	
}
