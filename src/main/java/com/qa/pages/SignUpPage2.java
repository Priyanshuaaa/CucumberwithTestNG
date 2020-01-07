package com.qa.pages;

import java.util.List;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import com.qa.base.TestBase;

public class SignUpPage2 extends TestBase {
	
	@FindBy(how = How.XPATH, using = "//div[text()='Your company information and profile detail']")
	public WebElement heading;
	
	@FindBy(how = How.NAME, using = "company_name")
	public WebElement companyname;

	@FindBy(how = How.NAME, using = "phone")
	public WebElement phone;
	
	@FindBy(how = How.NAME, using = "fax")
	public WebElement fax;
	
	@FindBy(how = How.NAME, using = "website")
	public WebElement website;
	
	@FindBy(how = How.NAME, using = "company_email")
	public WebElement companyemail;
	
	@FindBy(how = How.NAME, using = "service")
	public WebElement description;
	
	@FindBy(how = How.NAME, using = "address")
	public WebElement address;
	
	@FindBy(how = How.NAME, using = "city")
	public WebElement city;
	
	@FindBy(how = How.NAME, using = "state")
	public WebElement state;
	
	@FindBy(how = How.NAME, using = "postcode")
	public WebElement postcode;
	
	@FindBy(how = How.NAME, using = "copy_address")
	public WebElement billaddress;
	
	@FindBy(how = How.NAME, using = "btnSubmit")
	public WebElement continuebtn;
	
	@FindAll(@FindBy(how = How.XPATH, using = "//select[@name='country']//option"))
	public List<WebElement> country;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please enter a valid Email address')]")
	public WebElement invalidemail_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please enter the company name')]")
	public WebElement blankcompany_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please enter the phone number')]")
	public WebElement blankphonenumber_errormsg;
		
	public SignUpPage2()
	{
		PageFactory.initElements(driver,this);
	}
	
	public SignUpPage3 signup2submit()
	{
		continuebtn.click();
		return new SignUpPage3();
	}

}
