package vo;

import java.sql.Date;

public class BoardBean {

	private int qa_num;
	private String qa_name;
	private String qa_pass;
	private String qa_subject;
	private String qa_content;
	private String qa_file;
	private int qa_ref;
	private int qa_lev;
	private int qa_step;
	private Date qa_date;
	private int qa_section;

	public int getQa_num() {
		return qa_num;
	}

	public void setQa_num(int qa_num) {
		this.qa_num = qa_num;
	}

	public String getQa_name() {
		return qa_name;
	}

	public void setQa_name(String qa_name) {
		this.qa_name = qa_name;
	}

	public String getQa_content() {
		return qa_content;
	}

	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}

	public int getQa_ref() {
		return qa_ref;
	}

	public void setQa_ref(int qa_ref) {
		this.qa_ref = qa_ref;
	}

	public int getQa_lev() {
		return qa_lev;
	}

	public void setQa_lev(int qa_lev) {
		this.qa_lev = qa_lev;
	}

	public int getQa_step() {
		return qa_step;
	}

	public void setQa_step(int qa_step) {
		this.qa_step = qa_step;
	}

	public Date getQa_date() {
		return qa_date;
	}

	public void setQa_date(Date qa_date) {
		this.qa_date = qa_date;
	}

	public int getQa_section() {
		return qa_section;
	}

	public void setQa_section(int qa_section) {
		this.qa_section = qa_section;
	}

	public String getQa_pass() {
		return qa_pass;
	}

	public void setQa_pass(String qa_pass) {
		this.qa_pass = qa_pass;
	}

	public String getQa_file() {
		return qa_file;
	}

	public void setQa_file(String qa_file) {
		this.qa_file = qa_file;
	}

	public String getQa_subject() {
		return qa_subject;
	}

	public void setQa_subject(String qa_subject) {
		this.qa_subject = qa_subject;
	}

}
