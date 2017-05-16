package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.model.Seat;
import library.session.LibraryRepository;

public class CommandSeatNum implements Command 
{
	private String next;
	
	public CommandSeatNum( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			LibraryRepository repo = new LibraryRepository();
			String seatNum = repo.seatNum();
			request.setAttribute("seatNum", seatNum);
		}catch( Exception ex ){
			throw new CommandException("CommandSeatNum.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}