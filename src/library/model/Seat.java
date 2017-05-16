package library.model;

public class Seat {
	private String seatNum;
	private String id;
	private String seatState;
	
	public Seat() { }

	public Seat(String seatNum, String id, String seatState) {
		super();
		this.seatNum = seatNum;
		this.id = id;
		this.seatState = seatState;
	}

	public String getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSeatState() {
		return seatState;
	}

	public void setSeatState(String seatState) {
		this.seatState = seatState;
	}
}
