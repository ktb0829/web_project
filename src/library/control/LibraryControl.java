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
import library.command.CommandExtend;
import library.command.CommandList;
import library.command.CommandNull;
import library.command.CommandRent;
import library.command.CommandRentView;
import library.command.CommandReserve;
import library.command.CommandReserveMain;
import library.command.CommandSeat;
import library.command.CommandSeatInput;
import library.command.CommandSeatNum;

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
		commandMap.put("reserve", new CommandReserve("reserve.jsp") );
		commandMap.put("greeting_page", new CommandNull("greeting_page.jsp") );
		commandMap.put("main-reserve", new CommandReserveMain("reserve.jsp") );
		commandMap.put("study", new CommandSeatNum("pageform2.jsp") );
		commandMap.put("1th-page", new CommandSeat("1th.jsp") );
		commandMap.put("1seat-input", new CommandSeatInput("1th.jsp") );
		commandMap.put("rent-main", new CommandRentView("extend.jsp") );
		commandMap.put("rent", new CommandRent("extend.jsp") );
		commandMap.put("extend", new CommandExtend("extend.jsp") );
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
			cmdKey = "home";
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