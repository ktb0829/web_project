package board.notice.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.notice.command.Command;
import board.notice.command.CommandDelete;
import board.notice.command.CommandDetail;
import board.notice.command.CommandException;
import board.notice.command.CommandInsert;
import board.notice.command.CommandList;
import board.notice.command.CommandModify;
import board.notice.command.CommandNull;



/**
 * Servlet implementation class NoControl
 */
@WebServlet("/NoControl")
public class NoControl extends HttpServlet {
	private HashMap commandMap;
	private String jspDir = "/view/";
	private String  error = "error.jsp";
    
    public NoControl() {
        super();
        initCommand();
    }

	private void initCommand() {
		
		commandMap = new HashMap();
		
		commandMap.put("notice-main",	new CommandNull("NoticeMain.jsp") );
		
		commandMap.put("notice-list",	new CommandList("NoticeList.jsp") );
		
		commandMap.put("notice-insert",	new CommandNull("NoticeInsert.jsp") );
		
		commandMap.put("notice-save",	new CommandInsert("NoticeList.jsp") );
		
		commandMap.put("notice-detail",	new CommandDetail("NoticeView.jsp") );
		
		commandMap.put("notice-modifyform",	new CommandDetail("NoticeModify.jsp") );
		
		commandMap.put("notice-modify",	new CommandModify("NoticeList.jsp") );
		
		commandMap.put("notice-delete",	new CommandDelete("NoticeList.jsp") );
		
		commandMap.put("main",	new CommandList("main.jsp") );
		
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
			cmdKey = "main";
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
