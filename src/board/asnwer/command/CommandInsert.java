package board.asnwer.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import board.answer.mybatis.AnswerComment;
import board.answer.mybatis.AnswerRepository;


public class CommandInsert implements Command{

	private String next;

	public CommandInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			 System.out.println("command접속");
			AnswerComment answerinsert = new AnswerComment();
			System.out.println("뭐가오류1");
			
			
			
//			answerinsert.setBoardNum(Integer.parseInt(request.getParameter("boardNum")));
//			System.out.println("request.getParameter('boardNum')");
			answerinsert.setId("hyun");
			answerinsert.setBoardType(request.getParameter("boardType"));
			answerinsert.setBoardTitle(request.getParameter("boardTitle"));
			answerinsert.setBoardContent(request.getParameter("boardContent"));
			answerinsert.setBoardDay("sysdate");
			answerinsert.setBoardReadCount(Integer.parseInt("0"));
			answerinsert.setBoardPicPath("0");
			answerinsert.setBoardState("접수");
			System.out.println(answerinsert.toString());
			
			
			AnswerRepository repo = new AnswerRepository();
			repo.insertCommnet(answerinsert); //repo로 넘겨줌 
			System.out.println("12341234");
			
			List<AnswerComment> list = repo.selectComment();
			request.setAttribute("list", list);
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
