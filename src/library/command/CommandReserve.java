package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import library.session.LibraryRepository;

public class CommandReserve implements Command 
{
	private String next;
	
	public CommandReserve( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			String bookNum = request.getParameter("bookNum");
			LibraryRepository repo = new LibraryRepository();
			repo.updateRentState(bookNum);
			
			repo.reserve(bookNum);
			
		}catch( Exception ex ){
			throw new CommandException("CommandReserve.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}