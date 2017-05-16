package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.model.Reserve;
import library.session.LibraryRepository;

public class CommandReserveMain implements Command 
{
	private String next;
	
	public CommandReserveMain( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			
			LibraryRepository repo = new LibraryRepository();
			
			List<Reserve> list = null;
			list = repo.reserveViewById(id);
			
			request.setAttribute("reserve", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandReserveMain.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}