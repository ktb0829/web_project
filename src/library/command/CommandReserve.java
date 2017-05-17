package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.session.LibraryRepository;
import library.model.Reserve;

public class CommandReserve implements Command 
{
	private String next;
	
	public CommandReserve( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			
			String bookNum = request.getParameter("bookNum");
			LibraryRepository repo = new LibraryRepository();
			repo.updateRentStateReserve(bookNum);
			
			repo.reserve(bookNum, id);
			
			List<Reserve> list = null;
			list = repo.reserveView(bookNum);
			
			request.setAttribute("reserve", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandReserve.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}