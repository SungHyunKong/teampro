package com.ts.model;

public class ScheduleVO {
	private String title; //일정내용
	private String start1; //시작날짜
	private String end1; //종료날짜
	private String groupId; //자동으로 그룹아이디가 정해짐
	private String writer; //
	private String content; //
	private boolean allDay = false; // 하루종일 일정이유지되는가?
	
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
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isAllday() {
		return allDay;
	}
	public void setAllday(boolean allday) {
		this.allDay = allday;
	}
	
	public ScheduleVO(String title, String start1, String end1, String groupId, String writer, String content,
			boolean allDay) {
		super();
		this.title = title;
		this.start1 = start1;
		this.end1 = end1;
		this.groupId = groupId;
		this.writer = writer;
		this.content = content;
		this.allDay = allDay;
	}
	public ScheduleVO(String start,String end) {
		this.start1 = start;
		this.end1 =end;
	}
}
