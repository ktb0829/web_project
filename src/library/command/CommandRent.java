package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.model.Rent;
import library.session.LibraryRepository;

public class CommandRent implements Command 
{
	private String next;
	
	public CommandRent( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			String bookNum = request.getParameter("bookNum");
			
			LibraryRepository repo = new LibraryRepository();
			repo.rent(id, bookNum);
			
			List<Rent> list = null;
			
			list = repo.rentListById(id);
			
			request.setAttribute("rent", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandRent.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}