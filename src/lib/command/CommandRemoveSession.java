package lib.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lib.command.Command;

public class CommandRemoveSession implements Command{
	private String next;

	public CommandRemoveSession( String _next ){
		next = _next;
	}


	@Override
	public String execute(HttpServletRequest request ,HttpServletResponse response) throws CommandException, CommandException  {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		
		return next;
	}

	
	
	
}
