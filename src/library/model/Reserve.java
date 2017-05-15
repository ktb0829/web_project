package library.model;

public class Reserve {
	private String reserveNum;
	private String id;
	private String bookNum;
	private String bookTitle;
	private String reserveDate;
	private String returnSchedule;
	private String reserveState;
	
	public Reserve() { }

	public Reserve(String reserveNum, String id, String bookNum, String bookTitle, String reserveDate,
			String returnSchedule, String reserveState) {
		super();
		this.reserveNum = reserveNum;
		this.id = id;
		this.bookNum = bookNum;
		this.bookTitle = bookTitle;
		this.reserveDate = reserveDate;
		this.returnSchedule = returnSchedule;
		this.reserveState = reserveState;
	}

	public String getReserveNum() {
		return reserveNum;
	}

	public void setReserveNum(String reserveNum) {
		this.reserveNum = reserveNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBookNum() {
		return bookNum;
	}

	public void setBookNum(String bookNum) {
		this.bookNum = bookNum;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getReturnSchedule() {
		return returnSchedule;
	}

	public void setReturnSchedule(String returnSchedule) {
		this.returnSchedule = returnSchedule;
	}

	public String getReserveState() {
		return reserveState;
	}

	public void setReserveState(String reserveState) {
		this.reserveState = reserveState;
	}
}
