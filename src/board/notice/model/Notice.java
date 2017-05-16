package board.notice.model;

public class Notice {

	private int boardNum;
	private String id;
	private String boardType;
	private String boardTitle;
	private String boardContent;
	private String boardDay;
	private int boardReadCount;
	private String boardPicPath;
	private String boardState;
	
	public Notice(){}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDay() {
		return boardDay;
	}

	public void setBoardDay(String boardDay) {
		this.boardDay = boardDay;
	}

	public int getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(int boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public String getBoardPicPath() {
		return boardPicPath;
	}

	public void setBoardPicPath(String boardPicPath) {
		this.boardPicPath = boardPicPath;
	}

	public String getBoardState() {
		return boardState;
	}

	public void setBoardState(String boardState) {
		this.boardState = boardState;
	}

	public Notice(int boardNum, String id, String boardType, String boardTitle, String boardContent, String boardDay,
			int boardReadCount, String boardPicPath, String boardState) {
		super();
		this.boardNum = boardNum;
		this.id = id;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDay = boardDay;
		this.boardReadCount = boardReadCount;
		this.boardPicPath = boardPicPath;
		this.boardState = boardState;
	}
	
	
	
	
	
	
	
	
	
	
	
}
