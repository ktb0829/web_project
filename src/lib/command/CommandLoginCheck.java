package lib.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lib.session.CommentRepository;

public class CommandLoginCheck implements Command {

	private String next;
	
	public CommandLoginCheck(String next) {

		this.next=next;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws CommandException, CommandException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		CommentRepository repo = new CommentRepository();
		String id = repo.loginCheck(username,password);
		
		 try {
			response.getWriter().print(id);
		} catch (IOException e) {
			throw new CommandException();
		}
	    
		return null;
	}

}
