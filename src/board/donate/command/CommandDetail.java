package board.donate.command;

import javax.servlet.http.HttpServletRequest;

import board.donate.mybatis.DonateComment;
import board.donate.mybatis.DonateRepository;



public class CommandDetail implements Command{

	private String next;

	public CommandDetail( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			System.out.println("커맨드1");
			
			String num = request.getParameter("num");
			DonateRepository repo = new DonateRepository();
			DonateComment result = repo.viewComment(num);
			repo.readComment(num);
			request.setAttribute("detail", result);
			
		}catch( Exception ex ){
			throw new CommandException("CommandDetail.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
	
}
