package library.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import library.command.Command;
import library.command.CommandException;
import library.command.CommandList;
import library.command.CommandNull;
import library.command.CommandReserve;

public class LibraryControl extends HttpServlet{
	private HashMap commandMap;
	private String	jspDir = "/view/";
	private String  error = "error.jsp";
	
    public LibraryControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();

		commandMap.put("home", new CommandNull("main.jsp") );
		commandMap.put("main-search", new CommandNull("searchbook.jsp") );
		commandMap.put("search", new CommandList("searchbook.jsp") );
		commandMap.put("reserve", new CommandReserve("searchbook.jsp") );
		commandMap.put("greeting_page", new CommandNull("greeting_page.jsp") );
		
//		commandMap.put("insert", new CommandInput("BoardView.jsp") );
//		commandMap.put("list", new CommandList("BoardList.jsp") );
//		commandMap.put("view", new CommandView("BoardView.jsp") );
//		commandMap.put("delete-form", new CommandNull("BoardDeleteForm.jsp") );
//		commandMap.put("delete", new CommandDelete("BoardDelete.jsp") );
//		commandMap.put("modify-form", new CommandView("BoardModifyForm.jsp") );
//		commandMap.put("modify", new CommandModify("BoardModify.jsp") );
//		commandMap.put("reply-form", new CommandNull("BoardReplyForm.jsp") );
//		commandMap.put("reply", new CommandReply("BoardReply.jsp") );

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request );
 
		} catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
	}
}