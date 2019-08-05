package com.skilldistillery.fourteeners.entities;

import javax.persistence.*;

@Entity
public class Fourteener {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int rank;
	private String peak;
	private String elevation;
	private String range;
	private boolean complete;
	
	public Fourteener() {
		super();
	}

	public Fourteener(int rank, String peak, String elevation, String range, boolean complete) {
		super();
		this.rank = rank;
		this.peak = peak;
		this.elevation = elevation;
		this.range = range;
		this.complete = complete;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getPeak() {
		return peak;
	}

	public void setPeak(String peak) {
		this.peak = peak;
	}

	public String getElevation() {
		return elevation;
	}

	public void setElevation(String elevation) {
		this.elevation = elevation;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Fourteener [id=");
		builder.append(id);
		builder.append(", rank=");
		builder.append(rank);
		builder.append(", peak=");
		builder.append(peak);
		builder.append(", elevation=");
		builder.append(elevation);
		builder.append(", range=");
		builder.append(range);
		builder.append(", complete=");
		builder.append(complete);
		builder.append("]");
		return builder.toString();
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Fourteener other = (Fourteener) obj;
		if (id != other.id)
			return false;
		return true;
	}

	
	
	

}
