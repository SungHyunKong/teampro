package com.ts.model;

public class ScheduleVO {
	private String title; //일정내용
	private String start1; //시작날짜
	private String end1; //종료날짜

	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart1() {
		return start1;
	}
	public void setStart1(String start1) {
		this.start1 = start1;
	}
	public String getEnd1() {
		return end1;
	}
	public void setEnd1(String end1) {
		this.end1 = end1;
	}
	
	public ScheduleVO(String title,String start,String end) {
		this.title = title;
		this.start1 = start;
		this.end1 =end;
	}
}
