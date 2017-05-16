package board.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.notice.mybatis.NoticeComment;
import board.notice.mybatis.NoticeRepository;


public class CommandDelete implements Command {

	private String next;

	public CommandDelete( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			System.out.println("딜리트1");
			NoticeComment notice = new NoticeComment();
			System.out.println("딜리트2");
			notice.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
			NoticeRepository repo = new NoticeRepository();
			repo.deleteComment(notice); //repo로 넘겨줌 
			
			List<NoticeComment> list = repo.selectComment();
			request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
}
