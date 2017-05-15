package library.command;

import javax.servlet.http.HttpServletRequest;

import library.session.LibraryRepository;

public class CommandReserveView {
	private String next;
	
	public CommandReserveView( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			LibraryRepository repo = new LibraryRepository();			
			
		}catch( Exception ex ){
			throw new CommandException("CommandReserve.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}
