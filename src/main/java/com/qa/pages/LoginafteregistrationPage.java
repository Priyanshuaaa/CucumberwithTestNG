package com.qa.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import com.qa.base.TestBase;

public class LoginafteregistrationPage extends TestBase{
	
	public LoginafteregistrationPage()
	{
		PageFactory.initElements(driver,this);

	}

	@FindBy(how = How.XPATH, using = "//div[contains(text(),'Your account is now registered.')]")
	public WebElement heading;

	
}
