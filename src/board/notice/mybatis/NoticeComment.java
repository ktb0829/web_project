package board.notice.mybatis;

import java.io.Serializable;

public class NoticeComment implements Serializable {

	int boardNum;
	String id;
	String boardType;
	String boardTitle;
	String boardContent;
	String boardDay;
	int boardReadCount;
	String boardPicPath;
	String boardState;
	
	public NoticeComment(){}
	
	public long getBoardNum() {
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
	public long getBoardReadCount() {
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
	@Override
	public String toString() {
		return "NoticeComment [boardNum=" + boardNum + ", id=" + id + ", boardType=" + boardType + ", boardTitle="
				+ boardTitle + ", boardContent=" + boardContent + ", boardDay=" + boardDay + ", boardReadCount="
				+ boardReadCount + ", boardPicPath=" + boardPicPath + ", boardState=" + boardState + "]";
	}
	
	
	
	
	
	
}

















