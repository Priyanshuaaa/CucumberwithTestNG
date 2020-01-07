package stepDefinations;

import org.openqa.selenium.Alert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;

import com.qa.base.TestBase;
import com.qa.pages.HomePage;
import com.qa.pages.LoginafteregistrationPage;
import com.qa.pages.Loginpage;
import com.qa.pages.SignUpPage2;
import com.qa.pages.SignUpPage3;
import com.qa.pages.SignupPage;
import com.qa.util.TestUtil;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SignupStepDefination extends TestBase {
 
	Loginpage login;
	SignupPage signup;
	HomePage homepage;
	SignUpPage2 signup2;
	SignUpPage3 signup3;
	SoftAssert softassert;
	Actions actionobj;
	LoginafteregistrationPage loginafteregistration;
	
    //Reg Exp:
    //1. \"([^\"]*)\"
    //2. \"(.*)\"

	public SignupStepDefination()
	{
		super();
	}
	
	@Before(order=1)
	public void setup()
	{
		initialization();
     	signup=new SignupPage();
     	homepage=new HomePage();
     	signup2=new SignUpPage2();
     	signup3=new SignUpPage3(); 
     	login=new Loginpage();
     	loginafteregistration=new LoginafteregistrationPage();
     	actionobj=new Actions(driver);
	}
	
	@Before(order=2)
	public void signupclick() throws InterruptedException
	{
		Thread.sleep(5000);
		signup=login.clickonsignup();
	}
	
	@Given("^user is already on Sign Up Screen$")
	public void user_is_already_on_Sign_Up_Screen()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.editiontxt,20));
	}
	
	@When("^user tries to sign up$")
	public void user_tries_to_sign_up()
	{
		signup2=signup.signupsubmit();	
	}

	@And("^sign up user should stay in sign up screen 1 only$")
	public void sign_up_user_should_stay_in_sign_up_screen_1_only()
	{
		String title=signup.validatesignupscreen(); 
		Assert.assertTrue(title.contains("CRMPRO - CRM Pro for customer relationship management, sales, and support"));
	}
	
	@And("^user enters \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\" into mandatory fields except Edition$")
	public void user_enters_valid_data_into_mandatory_fields_except_Edition(String firstname,String lastname,String email,String confirmemail,String username,String password,String confirmpassword)
	{
		signup.firstname.clear();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		signup.lastname.clear();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		signup.email.clear();
		TestUtil.sendKeys(driver,signup.email,20,email);
		signup.confirmemail.clear();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		signup.username.clear();
		TestUtil.sendKeys(driver,signup.username,20,username);
		signup.password.clear();
		TestUtil.sendKeys(driver,signup.password,20,password);
		signup.confirmpassword.clear();
		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
		TestUtil.clickOn(driver,signup.tandC,20);
	}
	
	@Then("^appropriate message in a pop up related to please select the Edition should get displayed$")
	public void appropriate_message_in_a_pop_up_related_to_please_select_the_Edition_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.edition_errormsg,20));
	}
	
	@And("^enters valid details like \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\",\"(.*)\"$")
	public void enters_valid_details(String edition,String firstname,String lastname,String email,String confirmemail,String username,String password,String confirmpassword) throws InterruptedException
	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
		signup.firstname.clear();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		signup.lastname.clear();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		signup.email.clear();
		TestUtil.sendKeys(driver,signup.email,20,email);
		signup.confirmemail.clear();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		signup.password.clear();
		TestUtil.sendKeys(driver,signup.password,20,password);
		signup.confirmpassword.clear();
		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
		signup.username.clear();
		TestUtil.sendKeys(driver,signup.username,20,username);
		TestUtil.clickOn(driver,signup.tandC,20);
	}
	
	@Then("^appropriate validation message related to the invalid username length should get displayed$")
	public void appropriate_validation_message_related_to_the_invalid_username_length_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.username_errormsg,20));
	}
	
//	@And("^user enters valid \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\",\"(.*)\"$")
//	public void  user_enters_valid_data_into_mandatory_fields_with_less_than_6_characters_passwords(String edition,String firstname,String lastname,String email,String confirmemail,String username,String password,String confirmpassword) throws InterruptedException
//	{
//		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
//		signup.firstname.clear();
//		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
//		signup.lastname.clear();
//		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
//		signup.email.clear();
//		TestUtil.sendKeys(driver,signup.email,20,email);
//		signup.confirmemail.clear();
//		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
//		signup.username.clear();
//		TestUtil.sendKeys(driver,signup.username,20,username);
//		signup.password.clear();
//		TestUtil.sendKeys(driver,signup.password,20,password);
//		signup.confirmpassword.clear();
//		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
//		TestUtil.clickOn(driver,signup.tandC,20);
//	}
	
	@Then("^appropriate validation message related to the invalid length of passwords should get displayed into the sign up screen 1$")
	public void appropriate_validation_message_related_to_the_invalid_length_of_passwords_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.passwrd_errormsg,20));
	}
	
	@And("^user enters valid data in \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\" and invalid \"(.*)\",\"(.*)\" fields$")
	public void user_enters_valid_data_in_mandatory_fields_and_invalid_emails(String edition,String firstname,String lastname,String username,String password,String confirmpassword,String email,String confirmemail) throws InterruptedException
	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
		signup.firstname.clear();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		signup.lastname.clear();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		signup.username.clear();
		TestUtil.sendKeys(driver,signup.username,20,username);
		signup.password.clear();
		TestUtil.sendKeys(driver,signup.password,20,password);
		signup.confirmpassword.clear();
		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
		signup.email.clear();
		TestUtil.sendKeys(driver,signup.email,20,email);
		signup.confirmemail.clear();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		TestUtil.clickOn(driver,signup.tandC,20);
	}
	
	@And("^user enters valid data into \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" fields expect passwords$")
	public void user_enters_valid_data_into_mandatory_fields_expect_passwords(String edition,String firstname,String lastname,String email,String confirmemail,String username) throws InterruptedException
	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
		signup.firstname.clear();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		signup.lastname.clear();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		signup.email.clear();
		TestUtil.sendKeys(driver,signup.email,20,email);
		signup.confirmemail.clear();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		signup.username.clear();
		TestUtil.sendKeys(driver,signup.username,20,username);
		TestUtil.clickOn(driver,signup.tandC,20);
	}
	
	@Then("^submit button should be disabled$")
	public void submit_button_should_be_disabled()
	{
		Assert.assertTrue(!signup.submit.isEnabled());
    }
	
	@Then("^appropriate validation message should get displayed related to the invalid combination of emails into the sign up screen 1$")
	public void appropriate_validation_message_should_get_displayed_related_to_the_invalid_combination_of_emails_into_the_sign_up_screen_1()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.invalidcombination_errormsg,20));
	}
	
	@Then("^appropriate validation message should get displayed related to the invalid format of emails into the sign up screen 1$")
	public void appropriate_validation_message_should_get_displayed_related_to_the_invalid_format_of_emails_into_the_sign_up_screen_1()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.invalidemail_errormsg,20));
	}
	
	@Then("^appropriate message in a pop up related to the username already exists should get displayed$")
	public void appropriate_message_in_a_pop_up_related_to_the_username_already_exists_should_get_displayed()
	{
            		
		    Alert alert=driver.switchTo().alert();
		    String errormsg=alert.getText();
		    System.out.println(errormsg);
		    Assert.assertTrue(errormsg.contains("Errors were encountered:"));
		    alert.accept();
	}
	
	@Then("^appropriate validation message related to the invalid combinations of password should get displayed on the sign up page$")
	public void appropriate_validation_message_related_to_the_invalid_combinations_of_password_should_get_displayed_on_the_sign_up_page()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup.invalidpassw_errormsg,20));
	}
	
	@And("^user doesn't enter valid data into mandatory fields except \"(.*)\"$")
	public void user_doesnt_enter_valid_data_into_mandatory_fields_except_Edition(String edition) throws InterruptedException
	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
	}
	
	@Then("^appropriate validation message should get displayed into the sign up screen$")
	public void appropriate_validation_message_should_get_displayed_into_the_sign_up_screen()
	{
		softassert=new SoftAssert();
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.firstname_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.lastname_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.email_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.confirmemail_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.usernames_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.password_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.confirmpassword_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup.TandC_errormsg,20));
		softassert.assertAll();
	}
	
	@And("^user enters valid \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\"$")
	public void user_enters_valid_data_into_all_mandatory_fields(String edition,String firstname,String lastname,String email,String confirmemail,String username,String password,String confirmpassword) throws InterruptedException
	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
		signup.firstname.clear();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		signup.lastname.clear();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		signup.email.clear();
		TestUtil.sendKeys(driver,signup.email,20,email);
		signup.confirmemail.clear();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		signup.username.clear();
		TestUtil.sendKeys(driver,signup.username,20,username);
		signup.password.clear();
		TestUtil.sendKeys(driver,signup.password,20,password);
		signup.confirmpassword.clear();
		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
		TestUtil.clickOn(driver,signup.tandC,20);
	}
	
	@When("^clearing out any of the entered values$")
	public void clearing_out_any_of_the_entered_values() throws InterruptedException
	{
		signup.password.clear();
	}
		
	
	@Then("^user should move to sign up screen2$")
	public void user_should_move_to_sign_up_screen2()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup2.heading,30));
	}
	
	
	@And("^entering \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\"$")
	public void user_enters_valid_company_details(String companyname,String phonenumber,String fax,String web,String emailaddress,String desc,String add,String city,String state,String postal,String country) throws InterruptedException
	{
		signup2.companyname.clear();
		signup2.companyname.sendKeys(companyname);
		signup2.phone.clear();
		signup2.phone.sendKeys(phonenumber);
		signup2.fax.clear();
		signup2.fax.sendKeys(fax);
		signup2.website.clear();
		signup2.website.sendKeys(web);
		signup2.companyemail.clear();
		signup2.companyemail.sendKeys(emailaddress);
		signup2.description.clear();
		signup2.description.sendKeys(desc);
		signup2.address.clear();
		signup2.address.sendKeys(add);
		signup2.city.clear();
		signup2.city.sendKeys(city);
		signup2.state.clear();
		signup2.state.sendKeys(state);
		signup2.postcode.clear();
		signup2.postcode.sendKeys(postal);
		TestUtil.getelementsfromlist(driver,signup2.country,20,country);
	}
	
	
	@When("^sign up user try to submit company profile information$")
	public void sign_up_user_try_to_submit_company_profile_information()
	{
		signup3=signup2.signup2submit();
	}
	
	@Then("^user should redirect to signup screen3$")
	public void user_should_redirect_to_signup_screen3()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.heading,20));
	}
	
	@And("^user enters valid \"(.*)\",\"(.*)\"$")
	public void user_enters_valid_company_name_and_phone_number(String company,String phone)
	{

		signup2.companyname.clear();
		TestUtil.sendKeys(driver,signup2.companyname,20,company);
		signup2.phone.clear();
		TestUtil.sendKeys(driver,signup2.phone,20,phone);
	}
	
	
	@And("^user enters valid \"(.*)\",\"(.*)\" and invalid \"(.*)\" address$")
	public void user_enters_invalid_emailaddress(String company,String phone,String email)
	{
		signup2.companyname.clear();
		TestUtil.sendKeys(driver,signup2.companyname,20,company);
		signup2.phone.clear();
		TestUtil.sendKeys(driver,signup2.phone,20,phone);
		signup2.companyemail.clear();
		TestUtil.sendKeys(driver,signup2.companyemail,20,email);
	}
	
	@Then("^user should stay on SignupScreen2$")
	public void user_should_stay_on_SignupScreen2()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup2.heading,20));
	}
	
	@And("^appropriate validation message related to the invalid email should get displayed$")
    public void appropriate_validation_message_should_get_displayed()
    {
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup2.invalidemail_errormsg,20));
    }
	
	@And("^appropriate validation message related to company name and phone number should get displayed$")
	public void appropriate_validationmessage_related_to_company_name_and_phone_number_should_get_displayed()	
	{
		softassert=new SoftAssert();
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup2.blankcompany_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup2.blankphonenumber_errormsg,20));
		softassert.assertAll();
	}
	
	@And("^entering \"(.*)\",\"(.*)\" from signup screen2$")
	public void entering_fax_emailaddress_from_signup_screen2(String fax,String emailaddress)
	{
		signup2.fax.clear();
		TestUtil.sendKeys(driver,signup2.fax,20,fax);
		signup2.companyemail.clear();
		TestUtil.sendKeys(driver,signup2.companyemail,20,emailaddress);
	}
	
	@And("^user enters valid \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" and \"(.*)\" by moving to next textfield through tabs$")
 	public void user_enters_valid_details(String edition,String firstname,String lastname,String email,String confirmemail,String username,String password,String confirmpassword) throws InterruptedException
 	{
		TestUtil.getelementsfromlist(driver,signup.slctedition,20,edition);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.firstname,20,firstname);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.lastname,20,lastname);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.email,20,email);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.confirmemail,20,confirmemail);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.username,20,username);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.password,20,password);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup.confirmpassword,20,confirmpassword);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.clickOn(driver,signup.tandC,20);		
		actionobj.sendKeys(Keys.TAB).perform();
//
//		    String[] tabOrder = {
//		      "signup.firstname",
//		      "signup.lastname",
//		      "signup.email",
//		      "signup.confirmemail",
//		      "signup.username",
//		      "signup.password",
//		      "signup.confirmpassword"
//		    };
//
//		    for (String currentField: tabOrder ){    
//		        WebElement expected = (WebElement)elements.getClass().getField(currentField).get(signup);
//		        WebElement actual = driver.switchTo().activeElement();
//		        Assert.assertEquals(expected, actual);
//		        driver.switchTo().activeElement().sendKeys(Keys.TAB);
//}
 	}
	
	@And("^user enters valid \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\" by moving to next textfield through tabs$")
	public void user_enter_data_through_tabs(String companyname,String phonenumber,String fax,String web,String emailaddress,String description,String add,String city,String state,String postal,String country) throws InterruptedException
	{
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.companyname,20,companyname);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.phone,20,phonenumber);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.fax,20,fax);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.website,20,web);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.companyemail,20,emailaddress);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.description,20,description);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.address,20,add);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.city,20,city);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.state,20,state);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.sendKeys(driver,signup2.postcode,20,postal);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.getelementsfromlist(driver,signup2.country,20,country);
		actionobj.sendKeys(Keys.TAB).perform();
		TestUtil.clickOn(driver,signup2.billaddress,20);
	}
	
	@And("^Role option under role dropdown should be disabled$")
	public void Role_option_under_role_dropdown_should_be_disabled()
	{
		Assert.assertTrue(!signup3.roleoption.isEnabled());
	}
	
	@And("^click on Add User button$")
	public void click_on_Add_User_button()
	{
		signup3.adduserclick();
	}
	
	@Then("^appropriate validation message should get displayed underneath each field$")
	public void appropriate_validation_message_should_get_displayed_underneath_each_field()
	{
		softassert=new SoftAssert();
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.lastname_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.emailadd_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.confirmemailadd_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.username_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.pass_errormsg,20));
		softassert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.confirmpass_errormsg,20));
		softassert.assertAll();
	}
	
	@When("^filling out only \"(.*)\"$")
	public void filling_out_only_first_name(String firstname)
	{
		signup3.firstname.clear();
		TestUtil.sendKeys(driver,signup3.firstname,20,firstname);
	}
	
	@And("^sign up user should stay in sign up screen 3 only$")
	public void signup_user_should_stay_in_sign_up_screen_3_only()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.heading,20));
	}
	
	@And("^click on Complete Registration button$")
	public void click_on_Complete_Registration_button()
	{
		loginafteregistration=signup3.completeregistrationclick();
	}
		
	@Then("^sign up user should redirect to login screen$")
	public void sign_up_user_should_redirect_to_login_screen_after_sucessfull_registration()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,loginafteregistration.heading,30));
	}
		
	@When("^filling out \"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\",\"(.*)\"$")
	public void filling_out_mandatory_fields(String first,String last,String email,String confirmemail,String username,String pass,String confirmpass,String role) throws InterruptedException
	{
		signup3.firstname.clear();
		TestUtil.sendKeys(driver,signup3.firstname,20,first);
		signup3.lastname.clear();
		TestUtil.sendKeys(driver,signup3.lastname,20,last);
		signup3.email.clear();
		TestUtil.sendKeys(driver,signup3.email,20,email);
		signup3.confirmemail.clear();
		TestUtil.sendKeys(driver,signup3.confirmemail,20,confirmemail);
		signup3.username.clear();
		TestUtil.sendKeys(driver,signup3.username,20,username);
		signup3.password.clear();
		TestUtil.sendKeys(driver,signup3.password,20,pass);
		signup3.confirmpassword.clear();
		TestUtil.sendKeys(driver,signup3.confirmpassword,20,confirmpass);
		TestUtil.getelementsfromlist(driver,signup3.role,20,role);
	}
	
	@Then("^appropriate validation message related to invalid length of Password and Confirm Password should get displayed$")
	public void appropriate_validation_message_related_to_the_invalid_length_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.invalidpasslength_errormsg,20));
	}
	
	@Then("^appropriate validation message related to the invalid length of username should get displayed$")
	public void appropriate_validation_message_related_to_the_invalid_length_of_username_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.invalidusername_errormsg,20));
	}
	
	@Then("^appropriate validation message related to invalid format of Email Address and Confirm Email Address should get displayed$")
	public void appropriate_validationmessage_related_to_invalid_format_of_Email_Address_and_Confirm_Email_Address_should_get_displayed()
	{
		Assert.assertTrue(TestUtil.elementobedisplayed(driver,signup3.invalidemail_errormsg,20));
	}
	
	@Then("^added user's \"(.*)\",\"(.*)\",\"(.*)\" should get displayed in Sign up 3$")
	public void added_user_details_should_get_displayed_in_Sign_up_3(String first,String last,String username)
	{
		String actualuserinfo=signup3.addeduserinfo.getText();
		System.out.println(actualuserinfo);
		boolean actualresult=actualuserinfo.contains(username);
		Assert.assertTrue(actualresult);

	}
	
	@After
	public void teardown()
	{
		driver.quit();
	}	
}
