package board.donate.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.donate.mybatis.DonateComment;
import board.donate.mybatis.DonateRepository;


public class CommandModify implements Command {

	
	private String next;

	public CommandModify( String _next ){
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			System.out.println("뭐가오류1");
			String savePath = "C:/Users/kosta/git/web_project/WebContent/images";
			int sizeLimit = 1024*1024*15;
			MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
			int donateNum = Integer.parseInt(multi.getParameter("donateNum"));
			String donation = multi.getParameter("donation");
			String donateFinish = multi.getParameter("donateFinish");
			String donateTitle = multi.getParameter("donateTitle");
			String donateContent = multi.getParameter("donateContent");
			String donatePicPath = multi.getFilesystemName("donatePicPath");
			String m_fileFullPath = savePath + "/" + donatePicPath;
			
			System.out.println(m_fileFullPath);
			System.out.println("command접속");
			DonateComment donateinsert = new DonateComment();
			System.out.println("뭐가오류1");
			
			donateinsert.setDonateNum(donateNum);
			donateinsert.setId("hyun");
			System.out.println("뭐가오류1");
			donateinsert.setDonation(donation);
			donateinsert.setDonateFinish(donateFinish);
			donateinsert.setDonateTitle(donateTitle);
			
			donateinsert.setDonateContent(donateContent);
			donateinsert.setDonateReadCount(Integer.parseInt("0"));
			donateinsert.setDonateDay("sysdate");
			donateinsert.setDonatePicPath(donatePicPath);
			
		
			System.out.println(donateinsert.toString());

			
			DonateRepository repo = new DonateRepository();
			repo.modifyComment(donateinsert); //repo로 넘겨줌 
	
			List<DonateComment> list = repo.selectComment();
			request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 수정시 > " + ex.toString() ); 
		}
		return next;
	}
	
	
	
	
}
