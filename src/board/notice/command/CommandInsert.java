package board.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;




import board.notice.mybatis.NoticeComment;
import board.notice.mybatis.NoticeRepository;


public class CommandInsert implements Command{

	private String next;

	public CommandInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			 System.out.println("command접속");
			NoticeComment notice = new NoticeComment();
			System.out.println("뭐가오류1");
			
			
			
//			answerinsert.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
//			System.out.println("request.getParameter('boardNum')");
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
			repo.insertCommnet(notice); //repo로 넘겨줌 
			System.out.println("12341234");
			
			List<NoticeComment> list = repo.selectComment();
			request.setAttribute("list", list);
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
