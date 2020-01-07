package com.qa.pages;

import java.util.List;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.qa.base.TestBase;

public class SignUpPage3 extends TestBase {
	
	public SignUpPage3()
	{
		PageFactory.initElements(driver,this);
	}
	
	@FindBy(how = How.XPATH, using = "//span[contains(text(),'You can now add more users to your account.')]")
	public WebElement heading;
	
	@FindBy(how = How.NAME, using = "first_name")
	public WebElement firstname;

	@FindBy(how = How.NAME, using = "surname")
	public WebElement lastname;
	
	@FindBy(how = How.NAME, using = "email")
	public WebElement email;
	
	@FindBy(how = How.NAME, using = "email_confirm")
	public WebElement confirmemail;
	
	@FindBy(how = How.NAME, using = "username")
	public WebElement username;
	
	@FindBy(how = How.NAME, using = "password")
	public WebElement password;
	
	@FindBy(how = How.NAME, using = "passwordconfirm")
	public WebElement confirmpassword;
	
	@FindBy(how = How.NAME, using = "add_user")
	public WebElement adduserbtn;
	
	@FindBy(how = How.NAME, using = "finish")
	public WebElement completeregistration;
	
	@FindBy(how = How.XPATH, using = "//select[@name='role_id']//option[contains(text(),'Role')]")
	public WebElement roleoption;
	
	@FindBy(how = How.XPATH, using = "//div[contains(text(),'Current Account Users:')]")
	public WebElement currentaccountuserslbl;
	
	@FindBy(how = How.XPATH, using = "//ul[@class='text_normal']")
	public WebElement addeduserinfo;
	
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please enter your surname')]")
	public WebElement lastname_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please enter your email address')]")
	public WebElement emailadd_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Please confirm your email address')]")
	public WebElement confirmemailadd_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'You must select a username')]")
	public WebElement username_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'You must select a password')]")
	public WebElement pass_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'You must confirm your password')]")
	public WebElement confirmpass_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Password must be at least 6 characters long')]")
	public WebElement invalidpasslength_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Username must be at least 6 characters long')]")
	public WebElement invalidusername_errormsg;
	
	@FindBy(how = How.XPATH, using = "//small[contains(text(),'Invalid Email Address')]")
	public WebElement invalidemail_errormsg;
	
			
	@FindAll(@FindBy(how = How.XPATH, using = "//select[@name='role_id']//option"))
	public List<WebElement> role;
		
	
	public void adduserclick()
	{
		adduserbtn.click();
	}
	
	public LoginafteregistrationPage completeregistrationclick()
	{
		completeregistration.click();
		return new LoginafteregistrationPage();
	}
	
}
