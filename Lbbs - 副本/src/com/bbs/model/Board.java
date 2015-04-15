package com.bbs.model;

public class Board {
	private int id;
	private int boardid;
	private String master;
	private String placard;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getPlacard() {
		return placard;
	}
	public void setPlacard(String placard) {
		this.placard = placard;
	}
	public String getMaster() {
		return master;
	}
	public void setMaster(String master) {
		this.master = master;
	}
	
}
