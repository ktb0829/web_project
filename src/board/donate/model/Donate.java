package board.donate.model;

public class Donate {

	public Donate(){}
	
	private int DonateNum;
	private String id;
	private String donation;
	
	private String donateFinish;
	private String donateTitle;
	private String donateContent;

	private int donateReadCount;
	private String donateDay;
	private String donatePicPath;
	
	
	
	
	public Donate(int donateNum, String id, String donation, String donateFinish, String donateTitle,
			String donateContent, int donateReadCount, String donateDay, String donatePicPath) {
		super();
		DonateNum = donateNum;
		this.id = id;
		this.donation = donation;
		this.donateFinish = donateFinish;
		this.donateTitle = donateTitle;
		this.donateContent = donateContent;
		this.donateReadCount = donateReadCount;
		this.donateDay = donateDay;
		this.donatePicPath = donatePicPath;
	}

	
	
	
	public int getDonateNum() {
		return DonateNum;
	}

	public void setDonateNum(int donateNum) {
		DonateNum = donateNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDonation() {
		return donation;
	}

	public void setDonation(String donation) {
		this.donation = donation;
	}

	public String getDonateFinish() {
		return donateFinish;
	}

	public void setDonateFinish(String donateFinish) {
		this.donateFinish = donateFinish;
	}

	public String getDonateTitle() {
		return donateTitle;
	}

	public void setDonateTitle(String donateTitle) {
		this.donateTitle = donateTitle;
	}

	public String getDonateContent() {
		return donateContent;
	}

	public void setDonateContent(String donateContent) {
		this.donateContent = donateContent;
	}

	public int getDonateReadCount() {
		return donateReadCount;
	}

	public void setDonateReadCount(int donateReadCount) {
		this.donateReadCount = donateReadCount;
	}

	public String getDonateDay() {
		return donateDay;
	}

	public void setDonateDay(String donateDay) {
		this.donateDay = donateDay;
	}

	public String getDonatePicPath() {
		return donatePicPath;
	}

	public void setDonatePicPath(String donatePicPath) {
		this.donatePicPath = donatePicPath;
	}

	
	
	
	
	
	@Override
	public String toString() {
		return "Donate [DonateNum=" + DonateNum + ", id=" + id + ", donation=" + donation + ", donateFinish="
				+ donateFinish + ", donateTitle=" + donateTitle + ", donateContent=" + donateContent
				+ ", donateReadCount=" + donateReadCount + ", donateDay=" + donateDay + ", donatePicPath="
				+ donatePicPath + "]";
	}











}
