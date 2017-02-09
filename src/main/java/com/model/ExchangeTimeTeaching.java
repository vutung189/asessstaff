package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "exchange_time_teaching")
public class ExchangeTimeTeaching {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", updatable = false, nullable = false)
	private long id;

	private int year;

	@Column(name = "number_pupils_min")
	private int numberPupilsMin;

	@Column(name = "number_pupils_max")
	private int numberPupilsMax;

	@Column(name="number_lecturer")
	private int numberLecturer;
	private String type;

	@Column(name = "level_education")
	private String levelEducation;

	private String language;
	private String program;
	
	@Column(name= "time_standard")
	private float timeStandard;

	private float coefficient;
	
	@Column(name="time_standard_max")
	private float timeStandardMax;

	
	public ExchangeTimeTeaching(){
		
	}
	
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

	@Column(name = "number_pupils_min")
	public int getNumberPupilsMin() {
		return numberPupilsMin;
	}

	public void setNumberPupilsMin(int numberPupilsMin) {
		this.numberPupilsMin = numberPupilsMin;
	}

	@Column(name = "number_pupils_max")
	public int getNumberPupilsMax() {
		return numberPupilsMax;
	}

	public void setNumberPupilsMax(int numberPupilsMax) {
		this.numberPupilsMax = numberPupilsMax;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "level_education")
	public String getLevelEducation() {
		return levelEducation;
	}

	public void setLevelEducation(String levelEducation) {
		this.levelEducation = levelEducation;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public float getCoefficient() {
		return coefficient;
	}

	public void setCoefficient(float coefficient) {
		this.coefficient = coefficient;
	}
	
	@Column(name= "number_lecturer")
	public int getNumberLecturer() {
		return numberLecturer;
	}

	public void setNumberLecturer(int numberLecturer) {
		this.numberLecturer = numberLecturer;
	}

	@Column(name= "time_standard")
	public float getTimeStandard() {
		return timeStandard;
	}

	public void setTimeStandard(float timeStandard) {
		this.timeStandard = timeStandard;
	}

	@Column(name= "time_standard_max")
	public float getTimeStandardMax() {
		return timeStandardMax;
	}

	public void setTimeStandardMax(float timeStandardMax) {
		this.timeStandardMax = timeStandardMax;
	}
	
	

}
