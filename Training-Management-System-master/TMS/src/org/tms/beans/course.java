package org.tms.beans;

public class course {
	private String p_uid;
	private String name;
	private String trainer_name;
	private String skill_type;
	private String course_name;
	private String Hands_on_status;
	private String assessment_scores;
	private String Evaluation_comments;
	public String getP_uid() {
		return p_uid;
	}
	public void setP_uid(String p_uid) {
		this.p_uid = p_uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSkill_type() {
		return skill_type;
	}
	public void setSkill_type(String skill_type) {
		this.skill_type = skill_type;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getHands_on_status() {
		return Hands_on_status;
	}
	public void setHands_on_status(String hands_on_status) {
		Hands_on_status = hands_on_status;
	}
	public String getAssessment_scores() {
		return assessment_scores;
	}
	public void setAssessment_scores(String assessment_scores) {
		this.assessment_scores = assessment_scores;
	}
	public String getEvaluation_comments() {
		return Evaluation_comments;
	}
	public void setEvaluation_comments(String evaluation_comments) {
		Evaluation_comments = evaluation_comments;
	}
	public course(String p_uid, String name,String trainer_name, String skill_type,
			String course_name, String hands_on_status,
			String assessment_scores, String evaluation_comments) {
		super();
		this.p_uid = p_uid;
		this.name = name;
		this.trainer_name=trainer_name;
		this.skill_type = skill_type;
		this.course_name = course_name;
		Hands_on_status = hands_on_status;
		this.assessment_scores = assessment_scores;
		Evaluation_comments = evaluation_comments;
	}
	public String getTrainer_name() {
		return trainer_name;
	}
	public void setTrainer_name(String trainer_name) {
		this.trainer_name = trainer_name;
	}
	
	

}
