package library.model;

public class Rent {
	private String rentNum;
	private String num;
	private String bookTitle;
	private String rentDay;
	private String returnSchedule;
	private String rentExtension;
	private String rentState;
	
	public Rent() { }

	public Rent(String rentNum, String num, String bookTitle, String rentDay, String returnSchedule,
			String rentExtension, String rentState) {
		super();
		this.rentNum = rentNum;
		this.num = num;
		this.bookTitle = bookTitle;
		this.rentDay = rentDay;
		this.returnSchedule = returnSchedule;
		this.rentExtension = rentExtension;
		this.rentState = rentState;
	}

	public String getRentNum() {
		return rentNum;
	}

	public void setRentNum(String rentNum) {
		this.rentNum = rentNum;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getRentDay() {
		return rentDay;
	}

	public void setRentDay(String rentDay) {
		this.rentDay = rentDay;
	}

	public String getReturnSchedule() {
		return returnSchedule;
	}

	public void setReturnSchedule(String returnSchedule) {
		this.returnSchedule = returnSchedule;
	}

	public String getRentExtension() {
		return rentExtension;
	}

	public void setRentExtension(String rentExtension) {
		this.rentExtension = rentExtension;
	}

	public String getRentState() {
		return rentState;
	}

	public void setRentState(String rentState) {
		this.rentState = rentState;
	}
}
