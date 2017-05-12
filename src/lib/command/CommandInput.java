package lib.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lib.model.Book;
import lib.session.CommentRepository;



public class CommandInput implements Command {
	private String next;

	public CommandInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request,HttpServletResponse response) throws CommandException {
		try{
			 System.out.println("command접속");
			Book book = new Book();
			
			book.setId(request.getParameter("id"));
			book.setName(request.getParameter("name"));
			book.setPassword(request.getParameter("password"));
			book.setAddr(request.getParameter("addr"));
			book.setTel(request.getParameter("tel"));
			book.setEmail(request.getParameter("email"));
			book.setDisabled(request.getParameter("disabled"));
			
			CommentRepository repo = new CommentRepository();
			repo.insertComment(book); //repo로 넘겨줌 
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
