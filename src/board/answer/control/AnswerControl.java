package board.answer.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.asnwer.command.Command;
import board.asnwer.command.CommandException;
import board.asnwer.command.CommandList;
import board.asnwer.command.CommandNull;




/**
 * Servlet implementation class AnswerControl
 */
@WebServlet("/AnswerControl")
public class AnswerControl extends HttpServlet {
       
	private HashMap commandMap;
	private String jspDir = "/00_board_answer/";
	private String  error = "error.jsp";
    
    public AnswerControl() {
        super();
        initCommand();
    }

	private void initCommand() {
		
		commandMap = new HashMap();
		
		commandMap.put("answer-main",	new CommandNull("AnswerMain.jsp") );
		commandMap.put("answer-list",	new CommandList("AnswerList.jsp") );
		commandMap.put("answer-detail",	new CommandNull("AnswerView.jsp") );
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		processRequestB(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		processRequestB(request, response);
		
	}

	private void processRequestB(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "answer-main";
		}
		
		
		Command cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request );

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDpr = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDpr.forward( request, response );
		
	}
	
	
	
	
}








































