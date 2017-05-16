package board.donate.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import board.donate.command.Command;
import board.donate.command.CommandDelete;
import board.donate.command.CommandDetail;
import board.donate.command.CommandException;

import board.donate.command.CommandList;
import board.donate.command.CommandModify;
import board.donate.command.CommandNull;
import board.donate.command.CommandPicture;


public class DonateControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/view/";
	private String  error = "error.jsp";
	
    public DonateControl() {
        super();
   
        initCommand();
    }

	
	private void initCommand() {
	
		commandMap = new HashMap();

		commandMap.put("main-page",	new CommandNull("Main.jsp") );
	
		commandMap.put("donate-list", new CommandList("DonateList.jsp") );
		
		commandMap.put("donate-insert", new CommandNull("DonateInsert.jsp") );
		
		commandMap.put("donate-save", new CommandPicture("DonateList.jsp") );
		
		 
		commandMap.put("donate-detail",	new CommandDetail("DonateView.jsp") );

		commandMap.put("donate-modifyform",	new CommandDetail("DonateModify.jsp") );
	
		commandMap.put("donate-modify",	new CommandModify("DonateList.jsp") );

		commandMap.put("donate-delete",	new CommandDelete("DonateList.jsp") );
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
    	processRequest(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		processRequest(request, response);

	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "main-page";
		}
		
		
		Command cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command) commandMap.get( cmdKey.toLowerCase());
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
