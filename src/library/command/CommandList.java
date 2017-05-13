package library.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import library.command.CommandException;
import library.session.LibraryRepository;
import library.command.Command;

public class CommandList implements Command 
{
	private String next;
	
	public CommandList( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException {
		try {
			String select = request.getParameter("select");
			String value = request.getParameter("value");
			
			LibraryRepository repo = new LibraryRepository();
			List list = null;
			
			if(select.equals("제목")) {
				list = repo.selectBoardByTitle(value);
			} else if (select.equals("저자")) {
				list = repo.selectBoardByWriter(value);
			} else if (select.equals("출판사")) {
				list = repo.selectBoardByPublisher(value);
			}
			
			request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
		}
		
		return next;
	}
}

