package board.donate.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.donate.mybatis.DonateComment;
import board.donate.mybatis.DonateRepository;



public class CommandDelete implements Command {

	private String next;

	public CommandDelete( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
		
			DonateComment donateinsert = new DonateComment();
			donateinsert.setDonateNum(Integer.parseInt(request.getParameter("donateNum")));
			System.out.println(donateinsert.toString());
			DonateRepository repo = new DonateRepository();
			repo.deleteComment(donateinsert); //repo로 넘겨줌 
			
			List<DonateComment> list = repo.selectComment();
			request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
}
