package model;

import java.sql.Timestamp;

public class Quiz_User {
	private long result_id;
	private long quiz_id;
	private long user_id;
	private String user_name;
	private String section_name;
	private String quiz_name;
	private Timestamp timesubmit;
	private double scores;
	private long course_id;
	private String timeswork;
	private int socaudung;
	private int tongsocau;
	public Quiz_User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Quiz_User(long result_id, long quiz_id, long user_id, String user_name, String section_name,
			String quiz_name, Timestamp timesubmit, double scores, long course_id, String timeswork, int socaudung,
			int tongsocau) {
		super();
		this.result_id = result_id;
		this.quiz_id = quiz_id;
		this.user_id = user_id;
		this.user_name = user_name;
		this.section_name = section_name;
		this.quiz_name = quiz_name;
		this.timesubmit = timesubmit;
		this.scores = scores;
		this.course_id = course_id;
		this.timeswork = timeswork;
		this.socaudung = socaudung;
		this.tongsocau = tongsocau;
	}
	public long getResult_id() {
		return result_id;
	}
	public void setResult_id(long result_id) {
		this.result_id = result_id;
	}
	public long getQuiz_id() {
		return quiz_id;
	}
	public void setQuiz_id(long quiz_id) {
		this.quiz_id = quiz_id;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public String getQuiz_name() {
		return quiz_name;
	}
	public void setQuiz_name(String quiz_name) {
		this.quiz_name = quiz_name;
	}
	public Timestamp getTimesubmit() {
		return timesubmit;
	}
	public void setTimesubmit(Timestamp timesubmit) {
		this.timesubmit = timesubmit;
	}
	public double getScores() {
		return scores;
	}
	public void setScores(double scores) {
		this.scores = scores;
	}
	public long getCourse_id() {
		return course_id;
	}
	public void setCourse_id(long course_id) {
		this.course_id = course_id;
	}
	public String getTimeswork() {
		return timeswork;
	}
	public void setTimeswork(String timeswork) {
		this.timeswork = timeswork;
	}
	public int getSocaudung() {
		return socaudung;
	}
	public void setSocaudung(int socaudung) {
		this.socaudung = socaudung;
	}
	public int getTongsocau() {
		return tongsocau;
	}
	public void setTongsocau(int tongsocau) {
		this.tongsocau = tongsocau;
	}
	
	
}
