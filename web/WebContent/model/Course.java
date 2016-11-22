package model;

public class Course {
	private long course_id;
	private String course_name;
	private String course_startdate;
	private String course_enddate;
	private int course_schedulingday;
	private int course_startlession;
	private int course_endlession;
	private String course_place;
	private String course_description;
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Course(long course_id, String course_name, String course_startdate, String course_enddate,
			int course_schedulingday, int course_startlession, int course_endlession, String course_place,
			String course_description) {
		super();
		this.course_id = course_id;
		this.course_name = course_name;
		this.course_startdate = course_startdate;
		this.course_enddate = course_enddate;
		this.course_schedulingday = course_schedulingday;
		this.course_startlession = course_startlession;
		this.course_endlession = course_endlession;
		this.course_place = course_place;
		this.course_description = course_description;
	}
	public long getCourse_id() {
		return course_id;
	}
	public void setCourse_id(long course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_startdate() {
		return course_startdate;
	}
	public void setCourse_startdate(String course_startdate) {
		this.course_startdate = course_startdate;
	}
	public String getCourse_enddate() {
		return course_enddate;
	}
	public void setCourse_enddate(String course_enddate) {
		this.course_enddate = course_enddate;
	}
	public int getCourse_schedulingday() {
		return course_schedulingday;
	}
	public void setCourse_schedulingday(int course_schedulingday) {
		this.course_schedulingday = course_schedulingday;
	}
	public int getCourse_startlession() {
		return course_startlession;
	}
	public void setCourse_startlession(int course_startlession) {
		this.course_startlession = course_startlession;
	}
	public int getCourse_endlession() {
		return course_endlession;
	}
	public void setCourse_endlession(int course_endlession) {
		this.course_endlession = course_endlession;
	}
	public String getCourse_place() {
		return course_place;
	}
	public void setCourse_place(String course_place) {
		this.course_place = course_place;
	}
	public String getCourse_description() {
		return course_description;
	}
	public void setCourse_description(String course_description) {
		this.course_description = course_description;
	}
	
}
