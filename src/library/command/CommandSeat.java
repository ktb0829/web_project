package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import library.model.Seat;
import library.session.LibraryRepository;

public class CommandSeat implements Command 
{
	private String next;
	
	public CommandSeat( String _next ){
		next = _next; 
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			LibraryRepository repo = new LibraryRepository();
			List<Seat> list = null;
			String num = request.getParameter("num");
			if(num.equals("1")) {
				list = repo.selectSeatByNum(num);
			} else if (num.equals("2")) {
				list = repo.selectSeatByNum(num);
			} else if (num.equals("3")) {
				list = repo.selectSeatByNum(num);
			}
			
			request.setAttribute("seat", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandReserve.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}