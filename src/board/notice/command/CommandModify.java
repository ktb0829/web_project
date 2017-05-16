package board.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.notice.mybatis.NoticeComment;
import board.notice.mybatis.NoticeRepository;


public class CommandModify implements Command {

	private String next;

	public CommandModify( String _next ){
		next = _next;
	}
	
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			 
			NoticeComment notice = new NoticeComment();
		
			
			
			notice.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));		
			notice.setId("hyun");
			notice.setBoardType(request.getParameter("boardType"));
			notice.setBoardTitle(request.getParameter("boardTitle"));
			notice.setBoardContent(request.getParameter("boardContent"));
			notice.setBoardDay("sysdate");
			notice.setBoardReadCount(Integer.parseInt("0"));
			notice.setBoardPicPath("0");
			notice.setBoardState("접수");
			System.out.println(notice.toString());

			
			NoticeRepository repo = new NoticeRepository();
			repo.modifyComment(notice); //repo로 넘겨줌 
			System.out.println("12341234");
			
			List<NoticeComment> list = repo.selectComment();
			request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
	
}
