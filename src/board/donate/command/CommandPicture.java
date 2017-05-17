package board.donate.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.donate.model.*;
import board.donate.mybatis.*;


public class CommandPicture implements Command{

	private String next;

	public CommandPicture( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		
		try{

		String savePath = "C:/Users/kosta/git/second/web_project/WebContent/images";
		
		int sizeLimit = 1024*1024*15;
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
	
		String donation = multi.getParameter("donation");
		String donateFinish = multi.getParameter("donateFinish");
		String donateTitle = multi.getParameter("donateTitle");
		String donateContent = multi.getParameter("donateContent");
		String donatePicPath = multi.getFilesystemName("donatePicPath");
		String m_fileFullPath = savePath + "/" + donatePicPath;
		
		System.out.println(m_fileFullPath);
		
		DonateComment donate = new DonateComment();
		
		donate.setId("hyun");
		donate.setDonation(donation);
		donate.setDonateFinish(donateFinish);
		donate.setDonateTitle(donateTitle);
		
		donate.setDonateContent(donateContent);
		donate.setDonateReadCount(Integer.parseInt("0"));
		donate.setDonateDay("sysdate");
		donate.setDonatePicPath(donatePicPath);
	
		System.out.println(donate.toString());

		DonateRepository repo = new DonateRepository();
	    repo.insertCommnet(donate); //repo로 넘겨줌 
		
		request.setAttribute("detail", donate);
		
		List<DonateComment> list = repo.selectComment();
		request.setAttribute("list", list);
		
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 그림> " + ex.toString() ); 
		}
		
		return next;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
