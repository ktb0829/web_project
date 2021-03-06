package board.asnwer.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.answer.mybatis.AnswerComment;
import board.answer.mybatis.AnswerRepository;

public class CommandDetail implements Command{

	private String next;

	public CommandDetail( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			System.out.println("커맨드1");
			
			String num = request.getParameter("num");
			AnswerRepository repo = new AnswerRepository();
			AnswerComment result = repo.viewComment(num);
			repo.readComment(num);
			request.setAttribute("detail", result);
			
			List<AnswerComment> list = repo.selectComment();
			request.setAttribute("list", list);
		}catch( Exception ex ){
			throw new CommandException("CommandDetail.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
}
