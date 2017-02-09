package com.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "synthesis_teaching")
public class SynthesisTeaching {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", updatable = false, nullable = false)
	private long id;
	
	private int year;	
	private int term;
	
	@Column(name = "class_credit")
	private String classCredit;
	
	@Column(name = "number_pupils")
	private int numberPupils;
	
	@Column(name = "name_credit")
	private String nameCredit;
	
	@Column(name ="number_credits")
	private int numberCredits;
	
	private String lecturer;
	
	/*---------------Theory----------------*/
	@Column(name ="theory_number_group")//số nhóm
	private int theoryNumberGroup;
	
	@Column(name ="theory_number_pupilts")//sĩ số nhóm
	private int theoryNumberPupilts;
	
	
	@Column(name ="theory_time_group")//số giờ/nhóm
	private int theoryTimeGroup;
	
	
	@Column(name ="theory_time_in")//số giờ trong
	private int theoryTimeIn;
	
	
	@Column(name ="theory_time_out")//số giờ ngoài
	private int theoryTimeOut;
	
	@Column(name ="theory_time_7")//số giờ thứ 7
	private int theoryTime7;
	
	/*---------------practice----------------*/
	@Column(name ="practice_number_group") //số nhóm
	private int practiceNumberGroup;
	
	@Column(name ="practice_number_lecturer") //số cán bộ (Cadres)
	private int practiceNumberLecturer;
	
	@Column(name ="practice_number_pupilts") //sĩ số nhóm
	private int practiceNumberPupilts;
	
	
	@Column(name ="practice_time_group")// số giờ/nhóm
	private int practiceTimeGroup;
	
	@Column(name ="practice_time_in")//số giờ trong
	private int practiceTimeIn;
	
	@Column(name ="practice_time_out")//số giờ ngoài
	private int practiceTimeOut;
	
	@Column(name ="practice_time_7")//số giờ thứ 7
	private int practiceTime7;
	
	@Column(name ="selft_study_time")//so gio tu hoc
	private int selftStudy;
	
	@Column(name ="time_standard")//Thoi gian chuan
	private float timeStandard;
	
	private float unit; //don vi
	private String note;
	
	
	/*------------------------------GET/SET----------------------------*/	

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	@Column(name = "class_credit")
	public String getClassCredit() {
		return classCredit;
	}
	public void setClassCredit(String classCredit) {
		this.classCredit = classCredit;
	}
	@Column(name = "number_pupils")
	public int getNumberPupils() {
		return numberPupils;
	}
	public void setNumberPupils(int numberPupils) {
		this.numberPupils = numberPupils;
	}
	@Column(name = "name_credit")
	public String getNameCredit() {
		return nameCredit;
	}
	public void setNameCredit(String nameCredit) {
		this.nameCredit = nameCredit;
	}
	@Column(name ="number_credits")
	public int getNumberCredits() {
		return numberCredits;
	}
	public void setNumberCredits(int numberCredits) {
		this.numberCredits = numberCredits;
	}
	public String getLecturer() {
		return lecturer;
	}
	public void setLecturer(String lecturer) {
		this.lecturer = lecturer;
	}
	@Column(name ="theory_number_group")//số nhóm
	public int getTheoryNumberGroup() {
		return theoryNumberGroup;
	}
	public void setTheoryNumberGroup(int theoryNumberGroup) {
		this.theoryNumberGroup = theoryNumberGroup;
	}
	@Column(name ="theory_number_pupilts")//sĩ số nhóm
	public int getTheoryNumberPupilts() {
		return theoryNumberPupilts;
	}
	public void setTheoryNumberPupilts(int theoryNumberPupilts) {
		this.theoryNumberPupilts = theoryNumberPupilts;
	}
	@Column(name ="theory_time_group")//số giờ/nhóm
	public int getTheoryTimeGroup() {
		return theoryTimeGroup;
	}
	public void setTheoryTimeGroup(int theoryTimeGroup) {
		this.theoryTimeGroup = theoryTimeGroup;
	}
	@Column(name ="theory_time_in")//số giờ trong
	public int getTheoryTimeIn() {
		return theoryTimeIn;
	}
	public void setTheoryTimeIn(int theoryTimeIn) {
		this.theoryTimeIn = theoryTimeIn;
	}
	@Column(name ="theory_time_out")//số giờ ngoài
	public int getTheoryTimeOut() {
		return theoryTimeOut;
	}
	public void setTheoryTimeOut(int theoryTimeOut) {
		this.theoryTimeOut = theoryTimeOut;
	}
	@Column(name ="theory_time_7")//số giờ thứ 7
	public int getTheoryTime7() {
		return theoryTime7;
	}
	public void setTheoryTime7(int theoryTime7) {
		this.theoryTime7 = theoryTime7;
	}
	@Column(name ="practice_number_group") //số nhóm
	public int getPracticeNumberGroup() {
		return practiceNumberGroup;
	}
	public void setPracticeNumberGroup(int practiceNumberGroup) {
		this.practiceNumberGroup = practiceNumberGroup;
	}
	@Column(name ="practice_number_lecturer") //số cán bộ (Cadres)
	public int getPracticeNumberLecturer() {
		return practiceNumberLecturer;
	}
	public void setPracticeNumberLecturer(int practiceNumberLecturer) {
		this.practiceNumberLecturer = practiceNumberLecturer;
	}
	@Column(name ="practice_number_pupilts") //sĩ số nhóm
	public int getPracticeNumberPupilts() {
		return practiceNumberPupilts;
	}
	public void setPracticeNumberPupilts(int practiceNumberPupilts) {
		this.practiceNumberPupilts = practiceNumberPupilts;
	}
	@Column(name ="practice_time_group")// số giờ/nhóm
	public int getPracticeTimeGroup() {
		return practiceTimeGroup;
	}
	public void setPracticeTimeGroup(int practiceTimeGroup) {
		this.practiceTimeGroup = practiceTimeGroup;
	}
	@Column(name ="practice_time_in")//số giờ trong
	public int getPracticeTimeIn() {
		return practiceTimeIn;
	}
	public void setPracticeTimeIn(int practiceTimeIn) {
		this.practiceTimeIn = practiceTimeIn;
	}
	@Column(name ="practice_time_out")//số giờ ngoài
	public int getPracticeTimeOut() {
		return practiceTimeOut;
	}
	public void setPracticeTimeOut(int practiceTimeOut) {
		this.practiceTimeOut = practiceTimeOut;
	}
	@Column(name ="practice_time_7")//số giờ thứ 7
	public int getPracticeTime7() {
		return practiceTime7;
	}
	public void setPracticeTime7(int practiceTime7) {
		this.practiceTime7 = practiceTime7;
	}
	@Column(name ="selft_study_time")//so gio tu hoc
	public int getSelftStudy() {
		return selftStudy;
	}
	public void setSelftStudy(int selftStudy) {
		this.selftStudy = selftStudy;
	}
	@Column(name ="time_standard")//Thoi gian chuan
	public float getTimeStandard() {
		return timeStandard;
	}
	public void setTimeStandard(float timeStandard) {
		this.timeStandard = timeStandard;
	}
	public float getUnit() {
		return unit;
	}
	public void setUnit(float unit) {
		this.unit = unit;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
	@Override
	public String toString() {
		return id + ", " + year + ", " + term + ", " + classCredit + ", " + numberPupils + ", " + nameCredit + ", "
				+ numberCredits + ", " + lecturer + ", " + theoryNumberGroup + ", " + theoryNumberPupilts + ", "
				+ theoryTimeGroup + ", " + theoryTimeIn + ", " + theoryTimeOut + ", " + theoryTime7 + ", "
				+ practiceNumberGroup + ", " + practiceNumberLecturer + ", " + practiceNumberPupilts + ", "
				+ practiceTimeGroup + ", " + practiceTimeIn + ", " + practiceTimeOut + ", " + practiceTime7 + ", "
				+ selftStudy + ", " + timeStandard + ", " + unit + ", " + note;
	}
	
	
}
