Feature: FREE CRM Login Feature

#Without Examples Keyword
#Scenario: FREE CRM Login Test Scenario
#
#Given user is already on login Page
#When title of login Page is FREE CRM
#Then user enters "Priyanshua" and "Chetu@123"
#Then user clicks on Login Button
#And user is on home page

#With Examples Keyword
Scenario: FREE CRM Login Test Scenario

Given title of login Page is FREE CRM
When title of login Page is FREE CRM
Then user enters valid username and password
And user clicks on Login Button
Then homepage is displayed
And validate logged in username
Then logout from the application

#Examples:
# |username| password |
# |Priyanshua|Chetu@123|
# |naveenk|test@123|
# |tom|test456|
 
 