package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "scientific_research_knowledge_transfer")
public class ScientificResearchKnowledgeTransfer {
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name = "id",updatable =false,nullable=false)
	private long id;
	
	
	private String type;
	
	private String description;
	
	@Column(name= "time_max")
	private float timeMax;

	@Column(name ="time_min")
	private float timeMin;
	
	@Column(name="time_standard")
	private float timeStandard;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name= "time_max")
	public float getTimeMax() {
		return timeMax;
	}

	public void setTimeMax(float timeMax) {
		this.timeMax = timeMax;
	}

	@Column(name ="time_min")
	public float getTimeMin() {
		return timeMin;
	}

	public void setTimeMin(float timeMin) {
		this.timeMin = timeMin;
	}

	@Column(name ="time_standard")
	public float getTimeStandard() {
		return timeStandard;
	}

	public void setTimeStandard(float timeStandard) {
		this.timeStandard = timeStandard;
	}
	
	
}
