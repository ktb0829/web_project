package board.asnwer.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.answer.mybatis.AnswerComment;
import board.answer.mybatis.AnswerRepository;

public class CommandDelete implements Command {

	private String next;

	public CommandDelete( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			System.out.println("딜리트1");
			AnswerComment answerinsert = new AnswerComment();
			System.out.println("딜리트2");
			answerinsert.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
			System.out.println("딜리트3");
			System.out.println(answerinsert.toString());
			AnswerRepository repo = new AnswerRepository();
			repo.deleteComment(answerinsert); //repo로 넘겨줌 

	
			List<AnswerComment> list = repo.selectComment();
			request.setAttribute("list", list);

		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
}
