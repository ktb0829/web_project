package lib.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lib.command.Command;
import lib.command.CommandException;
import lib.command.CommandInput;
import lib.command.CommandLoginCheck;
import lib.command.CommandNull;



public class TestControl extends HttpServlet  {
	private static final long serialVersionUID = 1L;

	private HashMap commandMap;
	private String	jspDir = "/";
	private String  error = "error.jsp";
    public TestControl() {
        super();
    	initCommand();
    }
    
    
    private void initCommand(){
    	
    	commandMap = new HashMap();
    	System.out.println("controll 접속 ");
    	commandMap.put("sign-page",	new CommandNull("signup.jsp") );
    	commandMap.put("main-page", new CommandInput("main.jsp"));
    	commandMap.put("login-page",new CommandNull("main.jsp"));
    	commandMap.put("login-do", new CommandLoginCheck("main.jsp"));
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
		String cmdKey	= request.getParameter("cmd"); //"list.jsp"
		if( cmdKey == null ){
			cmdKey = "main-page";
		}

		
		Command cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (Command)commandMap.get( cmdKey);
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			try {
				nextPage = cmd.execute( request,response );
			} catch (lib.command.CommandException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}
		
		if(nextPage != null) {
			RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
			reqDp.forward( request, response );
		}
		
	}

}
