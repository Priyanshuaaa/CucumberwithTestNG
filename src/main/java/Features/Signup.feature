@FunctionalTest
Feature: FREE CRM SignUp Feature

@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To verify the appearence of validation message after not passing the Edition from sign up screen1.
Given user is already on Sign Up Screen
And user enters "<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>","<Password>" and "<ConfirmPassword>" into mandatory fields except Edition
When user tries to sign up
Then appropriate message in a pop up related to please select the Edition should get displayed
And sign up user should stay in sign up screen 1 only

Examples:
 |FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
 |Megha|Jain|megha@yopmail.com|megha@yopmail.com|MeghaJKHGHGDHGD01000_1132|Chetu@123|Chetu@123|

 
@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To verify the validation message after passing username of less than 6 characters from sign up screen1.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then appropriate validation message related to the invalid username length should get displayed
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
|Free Edition|C.P|Gulati|Cp@yopmail.com|Cp@yopmail.com|JHGH|Chetu@123|Chetu@123|


@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To verify the appearence of validation message when less than 6 characters has been passed in password and confirm password textfields while user is trying to sign up from Signup Screen 1. 
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then appropriate validation message related to the invalid length of passwords should get displayed into the sign up screen 1
And sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|MeghaE11RT0098_1132|1234|1234|


@SmokeTest @SignupScreen1
Scenario Outline: To verify the appearence of validation message after passing the invalid combination of email address into both valid email and confirm email textfields from Signup Screen 1. 
Given user is already on Sign Up Screen
And user enters valid data in "<Edition>","<FirstName>","<LastName>","<Username>","<Password>" and "<ConfirmPassword>" and invalid "<Email>","<ConfirmEmail>" fields
When user tries to sign up 
Then appropriate validation message should get displayed related to the invalid combination of emails into the sign up screen 1
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Username|Password|ConfirmPassword|Email|ConfirmEmail|
|Free Edition|Megha|Jain|pampas_lkj11hg_1132|Chetu@123|Chetu@123|megha@yopmail.com|meghas@yopmail.com|


@SmokeTest @SignupScreen1
Scenario Outline: To verify the appearence of validation message after passing the invalid format of email address into both valid email and confirm email textfields from Signup Screen 1. 
Given user is already on Sign Up Screen
And user enters valid data in "<Edition>","<FirstName>","<LastName>","<Username>","<Password>" and "<ConfirmPassword>" and invalid "<Email>","<ConfirmEmail>" fields
When user tries to sign up 
Then appropriate validation message should get displayed related to the invalid format of emails into the sign up screen 1
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Username|Password|ConfirmPassword|Email|ConfirmEmail|
|Free Edition|Megha|Jain|thhgfkhgf11dk_1132|Chetu@123|Chetu@123|megha|megha|

@SmokeTest @SignupScreen1
Scenario Outline: To verify submit button should be disabled if any sort of validation message appears on the screen.
Given user is already on Sign Up Screen
And user enters valid data into "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" fields expect passwords
When user tries to sign up
Then submit button should be disabled
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|hdhgdk111hgk1132|

@SmokeTest @SignupScreen1
Scenario Outline: To verify submit button should be disabled after entering valid data into all mandatory fields and then clearing out any field.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When clearing out any of the entered values
Then submit button should be disabled
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|kjhgf111188551122|Chetu@123|Chetu@123|


@SmokeTest @SignupScreen1
Scenario: To verify submit button should be disabled right away after user redirects to the sign up screen 1.
Given user is already on Sign Up Screen
Then submit button should be disabled

@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To validate the sign up after passing the username which is already used to register account from sign up screen1.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then appropriate message in a pop up related to the username already exists should get displayed
And  sign up user should stay in sign up screen 1 only

Examples:
 |Edition|FirstName|LastName|Email|ConfirmEmail|Password|ConfirmPassword|Username|
 |Free Edition|C.P|Gulati|Cp@yopmail.com|Cp@yopmail.com|Chetu@123|Chetu@123|Priyanshua|



@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To validate the sign up after passing the invalid combination of passwords from sign up screen1.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then appropriate validation message related to the invalid combinations of password should get displayed on the sign up page
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|kljdvg111gjhkj8412|Chetu@123|Chetu@1234|


@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To verify the appearence of validation message if no data has been passed into the required textfields and clicking on submit button from sign up screen1.
Given user is already on Sign Up Screen
And user doesn't enter valid data into mandatory fields except "<Edition>"
When user tries to sign up
Then appropriate validation message should get displayed into the sign up screen 
And  sign up user should stay in sign up screen 1 only

Examples:
|Edition|
|Free Edition|


@SmokeTest @RegressionTest @SignupScreen1
Scenario Outline: To verify whether user moves to the sign up screen 2 or not after passing the valid data into all the mandatory fields and from sign up screen1 and hitting the submit button.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2

Examples:
 |Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|
 |Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|HRTYUI111K098877|Chetu@123|Chetu@123|
 

@SmokeTest @RegressionTest @SignupScreen2
Scenario Outline: To verify whether user moves to the sign up screen 3 or not after passing the valid data into all the mandatory,non-mandatory fields on Signup Screen 1 and 2
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghass_15569|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|
 
@SmokeTest @RegressionTest @SignupScreen2
Scenario Outline: To verify whether user moves to the sign up screen 3 or not after passing the valid data to all mandatory fields on Signup Screen 1 and 2
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And user enters valid "<Company>","<Phone>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghasss1132_5569|Chetu@123|Chetu@123|Infosys|8588887023|

 
@SmokeTest @RegressionTest @SignupScreen2
Scenario Outline: To validate whether appropriate validation message is displaying or not after passing invalid format of EmailAddress on Signup Screen 2
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And user enters valid "<Company>","<Phone>" and invalid "<EmailAdd>" address
Then user should stay on SignupScreen2
And appropriate validation message related to the invalid email should get displayed

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|EmailAdd|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|MeghasOPLPOI_63444545|Chetu@123|Chetu@123|Infosys|8588887023|MMMkdasdad.com|
 
@SmokeTest @RegressionTest @SignupScreen2
Scenario Outline: To validate whether appropriate validation message is displaying or not after keeping the CompanyName and PhoneNumber field blank and trying submit page.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Fax>","<EmailAdd>" from signup screen2
When sign up user try to submit company profile information
Then user should stay on SignupScreen2
And appropriate validation message related to company name and phone number should get displayed

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Fax|EmailAdd|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghasfddg781132|Chetu@123|Chetu@123|84454454|MMMk@yopmail.com|
 

@SmokeTest @RegressionTest @SignupScreen2 @SignupScreen1
Scenario Outline: To validate Tab Order on both Signup Screen 1 and 2
Given user is already on Sign Up Screen
And user enters valid "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>","<Password>" and "<ConfirmPassword>" by moving to next textfield through tabs
When user tries to sign up
Then user should move to sign up screen2
And user enters valid "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>" by moving to next textfield through tabs
When sign up user try to submit company profile information
Then user should redirect to signup screen3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Me8855981132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|

  
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To validate Role Option underneath Role selection dropdown should be disbled.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
And Role option under role dropdown should be disabled

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghcdgfdhfhfghaoiuiuoiu_1132565656|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|
 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify proper validations after keeping all fields blank and clicking on Add User option from Sign up Screen 3
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out only "<first>"
And  click on Add User button
Then appropriate validation message should get displayed underneath each field
And  sign up user should stay in sign up screen 3 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Megha63251132qeqwqrw|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanka|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify proper validations after keeping all fields blank and clicking on Complete Registration option from Sign up Screen 3
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
And click on Complete Registration button
Then sign up user should redirect to login screen

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghastrteyrey966446_1132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|
 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify after passing username which is already exists and valid data into mandatory fields,click on Add User button
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then appropriate message in a pop up related to the username already exists should get displayed
And  sign up user should stay in sign up screen 3 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghahfhffhhfhhfg961132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshu_113212@yopmail.com|Priyanshu_113212@yopmail.com|Megha_1132|Chetu@123|Chetu@123|User|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify after passing username of less than 6 characters and valid data into mandatory fields,click on Add User button
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then appropriate validation message related to the invalid length of username should get displayed
And  sign up user should stay in sign up screen 3 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|HJFLKGHYT71113269|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshu_113212@yopmail.com|Priyanshu_113212@yopmail.com|VBN|Chetu@123|Chetu@123|User|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify after passing password,confirm password of less than 6 characters and valid data into mandatory fields,click on Add User button
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then appropriate validation message related to invalid length of Password and Confirm Password should get displayed
And  sign up user should stay in sign up screen 3 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghdgdfgd056a55691132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshu_113212@yopmail.com|Priyanshu_113212@yopmail.com|Meghddsddssas4558899|Chetu|Chetu|User|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify after passing invalid format of email,confirm email address and valid data into mandatory fields,click on Add User button
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then appropriate validation message related to invalid format of Email Address and Confirm Email Address should get displayed
And  sign up user should stay in sign up screen 3 only

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|Meghafdfdfdfd6789632|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshu|Priyanshu|Megfggghas7418899|Chetu@123|Chetu@123|User|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify whether User Administrator role related user gets added or not after passing valid data into mandatory fields and click on Add User button.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then added user's "<first>","<last>","<username>" should get displayed in Sign up 3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|UPSGHJ789411132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshuaa_1132@yopmail.com|Priyanshuaa_1132@yopmail.com|OKL1327419638899|Chetu@123|Chetu@123|User Administrator|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify whether User role related user gets added or not after passing valid data into mandatory fields and click on Add User button.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then added user's "<first>","<last>","<username>" should get displayed in Sign up 3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|OLASKyuj9966336|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Piyuh|Kumar|PKA@yopmail.com|PKA@yopmail.com|UBERwer889911|Chetu@123|Chetu@123|User|

 
 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify user is redirecting to login screen or not after passing the valid values into the mandatory fields and clicking on Complete Registration button.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And  click on Complete Registration button
Then sign up user should redirect to login screen

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|TECTHKU8591132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshuaa_1132@yopmail.com|Priyanshuaa_1132@yopmail.com|MKJKLOKL8899|Chetu@123|Chetu@123|User|

 
@SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To validate user's first name,last name and username in Sign up 3 screen which was filled and saved in Signup Screen 1. 
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then added user's "<FirstName>","<LastName>","<Username>" should get displayed in Sign up 3


Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|KJKLOPPKLPOI1132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshuaa_1132@yopmail.com|Priyanshuaa_1132@yopmail.com|PLOIOPLPO1099|Chetu@123|Chetu@123|User|

 
 @SmokeTest @RegressionTest @SignupScreen3
Scenario Outline: To verify tab order on Sign up Screen 3.
Given user is already on Sign Up Screen
And enters valid details like "<Edition>","<FirstName>","<LastName>","<Email>","<ConfirmEmail>","<Username>" and "<Password>","<ConfirmPassword>"
When user tries to sign up
Then user should move to sign up screen2
And entering "<Company>","<Phone>","<Fax>","<WebSite>","<EmailAdd>","<Description>","<Address>","<City>","<State>","<Zip>","<Country>"
When sign up user try to submit company profile information
Then user should redirect to signup screen3
When filling out "<first>","<last>","<Emailaddress>","<ConfirmEmailAddress>","<username>","<Passwords>","<ConfirmPasswords>","<Role>"
And click on Add User button
Then added user's "<first>","<last>","<username>" should get displayed in Sign up 3

Examples:
|Edition|FirstName|LastName|Email|ConfirmEmail|Username|Password|ConfirmPassword|Company|Phone|Fax|WebSite|EmailAdd|Description|Address|City|State|Zip|Country|first|last|Emailaddress|ConfirmEmailAddress|username|Passwords|ConfirmPasswords|Role|
|Free Edition|Megha|Jain|megha@yopmail.com|megha@yopmail.com|KLNMJ6781132|Chetu@123|Chetu@123|Infosys|8588887023|9958948650|http://chetu.com|meghassss@yopmail.com|TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST|West Suite|Miami|Florida|33027|United States of America|Priyanshu|Arora|Priyanshuaa_1132@yopmail.com|Priyanshuaa_1132@yopmail.com|IJHGFJKL8899|Chetu@123|Chetu@123|User|

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 









