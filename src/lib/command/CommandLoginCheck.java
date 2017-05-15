package lib.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		if( !id.equals("loginFail")) {
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
		}
		
		try {
			response.getWriter().print(id);
		} catch (IOException e) {
			throw new CommandException();
		}
	    
		return null;
	}

}
