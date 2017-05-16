package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import library.model.Seat;
import library.session.LibraryRepository;

public class CommandSeatInput implements Command 
{
	private String next; 
	
	public CommandSeatInput( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			
			LibraryRepository repo = new LibraryRepository();
			
			String num = request.getParameter("num");
			String seat = request.getParameter("seat");
			
			String temp = num+"-"+seat;
			repo.insertseat(temp, id);
			
			List<Seat> list = null;
			list = repo.selectSeatByNum(num);
			request.setAttribute("seat", list);
		}catch( Exception ex ){
			throw new CommandException("CommandSeatInput.java < 예약시 > " + ex.toString() ); 
		}
		return next;
	}
}