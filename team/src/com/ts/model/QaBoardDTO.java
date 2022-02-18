package com.ts.model;

public class QaBoardDTO {

	private int qa_num;
	private String qa_id, qa_subject, qa_content, qa_file;
	private int qa_re_ref, qa_re_lev, qa_re_seq, qa_readcount;
	private String qa_date;

	public QaBoardDTO() {
	}

	public QaBoardDTO(int qa_num, String qa_id, String qa_subject, String qa_content, String qa_file, int qa_re_ref,
			int qa_re_lev, int qa_re_seq, int qa_readcount, String qa_date) {
		super();
		this.qa_num = qa_num;
		this.qa_id = qa_id;
		this.qa_subject = qa_subject;
		this.qa_content = qa_content;
		this.qa_file = qa_file;
		this.qa_re_ref = qa_re_ref;
		this.qa_re_lev = qa_re_lev;
		this.qa_re_seq = qa_re_seq;
		this.qa_readcount = qa_readcount;
		this.qa_date = qa_date;
	}

	public int getQa_num() {
		return qa_num;
	}

	public void setQa_num(int qa_num) {
		this.qa_num = qa_num;
	}

	public String getQa_id() {
		return qa_id;
	}

	public void setQa_id(String qa_id) {
		this.qa_id = qa_id;
	}

	public String getQa_subject() {
		return qa_subject;
	}

	public void setQa_subject(String qa_subject) {
		this.qa_subject = qa_subject;
	}

	public String getQa_content() {
		return qa_content;
	}

	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}

	public String getQa_file() {
		return qa_file;
	}

	public void setQa_file(String qa_file) {
		this.qa_file = qa_file;
	}

	public int getQa_re_ref() {
		return qa_re_ref;
	}

	public void setQa_re_ref(int qa_re_ref) {
		this.qa_re_ref = qa_re_ref;
	}

	public int getQa_re_lev() {
		return qa_re_lev;
	}

	public void setQa_re_lev(int qa_re_lev) {
		this.qa_re_lev = qa_re_lev;
	}

	public int getQa_re_seq() {
		return qa_re_seq;
	}

	public void setQa_re_seq(int qa_re_seq) {
		this.qa_re_seq = qa_re_seq;
	}

	public int getQa_readcount() {
		return qa_readcount;
	}

	public void setQa_readcount(int qa_readcount) {
		this.qa_readcount = qa_readcount;
	}

	public String getQa_date() {
		return qa_date;
	}

	public void setQa_date(String qa_date) {
		this.qa_date = qa_date;
	}

}
