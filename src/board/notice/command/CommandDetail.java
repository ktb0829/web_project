package board.notice.command;

import javax.servlet.http.HttpServletRequest;

import board.notice.mybatis.NoticeComment;
import board.notice.mybatis.NoticeRepository;


public class CommandDetail implements Command{

	private String next;

	public CommandDetail( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			System.out.println("커맨드1");
			
			String num = request.getParameter("num");
			System.out.println(num);
			NoticeRepository repo = new NoticeRepository();
			System.out.println(num);
			NoticeComment result = repo.viewComment(num);
			repo.readComment(num);
			System.out.println(num);
			request.setAttribute("detail", result);

			
			
			
		}catch( Exception ex ){
			throw new CommandException("CommandDetail.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
	
}
