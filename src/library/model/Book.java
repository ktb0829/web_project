package library.model;

public class Book {
	private String bookNum;
	private String bookTitle;
	private String bookWriter;
	private String bookPublisher;
	private String bookGenre;
	private String bookLocation;
	private String recoNum;
	private String bookState;
	
	public Book() {}

	public Book(String bookNum, String bookTitle, String bookWriter, String bookPublisher, String bookGenre,
			String bookLocation, String recoNum, String bookState) {
		super();
		this.bookNum = bookNum;
		this.bookTitle = bookTitle;
		this.bookWriter = bookWriter;
		this.bookPublisher = bookPublisher;
		this.bookGenre = bookGenre;
		this.bookLocation = bookLocation;
		this.recoNum = recoNum;
		this.bookState = bookState;
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

	public String getBookWriter() {
		return bookWriter;
	}

	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}

	public String getBookPublisher() {
		return bookPublisher;
	}

	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}

	public String getBookGenre() {
		return bookGenre;
	}

	public void setBookGenre(String bookGenre) {
		this.bookGenre = bookGenre;
	}

	public String getBookLocation() {
		return bookLocation;
	}

	public void setBookLocation(String bookLocation) {
		this.bookLocation = bookLocation;
	}

	public String getRecoNum() {
		return recoNum;
	}

	public void setRecoNum(String recoNum) {
		this.recoNum = recoNum;
	}

	public String getBookState() {
		return bookState;
	}

	public void setBookState(String bookState) {
		this.bookState = bookState;
	}
}
