package board.donate.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;



import board.donate.mybatis.DonateComment;
import board.donate.mybatis.DonateRepository;


public class CommandList implements Command{

	private String next;

	public CommandList( String _next ){

		next = _next;
	}
	
	public String execute( HttpServletRequest request ) throws CommandException{
		try{
			
			DonateRepository repo = new DonateRepository();
			List<DonateComment> list = repo.selectComment();
			request.setAttribute("list", list);
			System.out.println(list.toString());

		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
		}
		
		return next;
	}
	
	
	
	
}
