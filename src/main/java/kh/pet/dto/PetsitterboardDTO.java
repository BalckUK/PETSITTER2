package kh.pet.dto;

import java.sql.Date;

public class PetsitterboardDTO {
	private String psb_seq;
	private String psb_title;
	private String psb_writer;
	private Date psb_date;
	private String psb_contents;
	private String psb_thumb;
	private String psb_service;
	private Date psb_start_day;
	private Date psb_end_day;
	private String psb_time;
	private String psb_petType;
	private String psb_boardstatus;
	private int psb_review_cnt;
	
	public PetsitterboardDTO() {}
	
	public PetsitterboardDTO(String psb_seq, String psb_title, String psb_writer, Date psb_date, String psb_contents,
			String psb_thumb, String psb_service, Date psb_start_day, Date psb_end_day, String psb_time,
			String psb_petType, String psb_boardstatus, int psb_review_cnt) {
		super();
		this.psb_seq = psb_seq;
		this.psb_title = psb_title;
		this.psb_writer = psb_writer;
		this.psb_date = psb_date;
		this.psb_contents = psb_contents;
		this.psb_thumb = psb_thumb;
		this.psb_service = psb_service;
		this.psb_start_day = psb_start_day;
		this.psb_end_day = psb_end_day;
		this.psb_time = psb_time;
		this.psb_petType = psb_petType;
		this.psb_boardstatus = psb_boardstatus;
		this.psb_review_cnt = psb_review_cnt;
	}

	public String getPsb_seq() {
		return psb_seq;
	}

	public void setPsb_seq(String psb_seq) {
		this.psb_seq = psb_seq;
	}

	public String getPsb_title() {
		return psb_title;
	}

	public void setPsb_title(String psb_title) {
		this.psb_title = psb_title;
	}

	public String getPsb_writer() {
		return psb_writer;
	}

	public void setPsb_writer(String psb_writer) {
		this.psb_writer = psb_writer;
	}

	public Date getPsb_date() {
		return psb_date;
	}

	public void setPsb_date(Date psb_date) {
		this.psb_date = psb_date;
	}

	public String getPsb_contents() {
		return psb_contents;
	}

	public void setPsb_contents(String psb_contents) {
		this.psb_contents = psb_contents;
	}

	public String getPsb_thumb() {
		return psb_thumb;
	}

	public void setPsb_thumb(String psb_thumb) {
		this.psb_thumb = psb_thumb;
	}

	public String getPsb_service() {
		return psb_service;
	}

	public void setPsb_service(String psb_service) {
		this.psb_service = psb_service;
	}

	public Date getPsb_start_day() {
		return psb_start_day;
	}

	public void setPsb_start_day(Date psb_start_day) {
		this.psb_start_day = psb_start_day;
	}

	public Date getPsb_end_day() {
		return psb_end_day;
	}

	public void setPsb_end_day(Date psb_end_day) {
		this.psb_end_day = psb_end_day;
	}

	public String getPsb_time() {
		return psb_time;
	}

	public void setPsb_time(String psb_time) {
		this.psb_time = psb_time;
	}

	public String getPsb_petType() {
		return psb_petType;
	}

	public void setPsb_petType(String psb_petType) {
		this.psb_petType = psb_petType;
	}

	public String getPsb_boardstatus() {
		return psb_boardstatus;
	}

	public void setPsb_boardstatus(String psb_boardstatus) {
		this.psb_boardstatus = psb_boardstatus;
	}

	public int getPsb_review_cnt() {
		return psb_review_cnt;
	}

	public void setPsb_review_cnt(int psb_review_cnt) {
		this.psb_review_cnt = psb_review_cnt;
	}
	
	
}
