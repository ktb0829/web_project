package board.notice.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.notice.mybatis.NoticeComment;
import board.notice.mybatis.NoticeRepository;




public class CommandList implements Command{

	private String next;

	public CommandList( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {

		try{

			System.out.println("출력");
			
			NoticeRepository repo = new NoticeRepository();
			List<NoticeComment> list = repo.selectComment();
			request.setAttribute("list", list);

			
		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기시 >" + ex.toString() ); 
		}

		return next;

	}



}
























