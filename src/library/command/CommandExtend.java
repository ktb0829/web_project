package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.model.Rent;
import library.session.LibraryRepository;

public class CommandExtend implements Command 
{
	private String next;
	
	public CommandExtend( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			LibraryRepository repo = new LibraryRepository();
			String rentNum = request.getParameter("rentNum");
			repo.extend(rentNum);
			
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			
			List<Rent> list = null;
			
			list = repo.rentListById(id);
			
			request.setAttribute("rent", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandExtend.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}