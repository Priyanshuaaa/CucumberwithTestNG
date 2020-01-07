$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("C:/Users/priyanshua/Desktop/Data/com.qa.CucumberwithTestNG/src/main/java/Features/Signup.feature");
formatter.feature({
  "name": "FREE CRM SignUp Feature",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@FunctionalTest"
    }
  ]
});
formatter.scenarioOutline({
  "name": "To verify the appearence of validation message after not passing the Edition from sign up screen1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
formatter.step({
  "name": "user enters \"\u003cFirstName\u003e\",\"\u003cLastName\u003e\",\"\u003cEmail\u003e\",\"\u003cConfirmEmail\u003e\",\"\u003cUsername\u003e\",\"\u003cPassword\u003e\" and \"\u003cConfirmPassword\u003e\" into mandatory fields except Edition",
  "keyword": "And "
});
formatter.step({
  "name": "user tries to sign up",
  "keyword": "When "
});
formatter.step({
  "name": "appropriate message in a pop up related to please select the Edition should get displayed",
  "keyword": "Then "
});
formatter.step({
  "name": "sign up user should stay in sign up screen 1 only",
  "keyword": "And "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "FirstName",
        "LastName",
        "Email",
        "ConfirmEmail",
        "Username",
        "Password",
        "ConfirmPassword"
      ]
    },
    {
      "cells": [
        "Megha",
        "Jain",
        "megha@yopmail.com",
        "megha@yopmail.com",
        "MeghaJKHGHGDHGD01000_1132",
        "Chetu@123",
        "Chetu@123"
      ]
    }
  ]
});
formatter.scenario({
  "name": "To verify the appearence of validation message after not passing the Edition from sign up screen1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@FunctionalTest"
    },
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
formatter.match({
  "location": "SignupStepDefination.user_is_already_on_Sign_Up_Screen()"
});
formatter.result({
  "error_message": "org.openqa.selenium.WebDriverException: Failed to decode response from marionette\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027CHETUIWK255\u0027, ip: \u0027172.16.4.66\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_131\u0027\nDriver info: org.openqa.selenium.firefox.FirefoxDriver\nCapabilities {acceptInsecureCerts: true, browserName: firefox, browserVersion: 72.0, capabilities: {desiredCapabilities: {acceptInsecureCerts: true, browserName: firefox}}, javascriptEnabled: true, moz:accessibilityChecks: false, moz:buildID: 20200103162918, moz:headless: false, moz:processID: 10104, moz:profile: C:\\Users\\priyanshua\\AppData..., moz:shutdownTimeout: 60000, moz:useNonSpecCompliantPointerOrigin: false, moz:webdriverClick: true, pageLoadStrategy: normal, platform: WINDOWS, platformName: WINDOWS, platformVersion: 10.0, rotatable: false, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 04fb6b44-3e29-48ae-befb-21cfe0fd8f45\n*** Element info: {Using\u003did, value\u003deditionText}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat org.openqa.selenium.support.pagefactory.DefaultElementLocator.findElement(DefaultElementLocator.java:69)\r\n\tat org.openqa.selenium.support.pagefactory.internal.LocatingElementHandler.invoke(LocatingElementHandler.java:38)\r\n\tat com.sun.proxy.$Proxy17.isDisplayed(Unknown Source)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.elementIfVisible(ExpectedConditions.java:314)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:43)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$10.apply(ExpectedConditions.java:300)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$10.apply(ExpectedConditions.java:297)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:249)\r\n\tat com.qa.util.TestUtil.elementobedisplayed(TestUtil.java:46)\r\n\tat stepDefinations.SignupStepDefination.user_is_already_on_Sign_Up_Screen(SignupStepDefination.java:68)\r\n\tat ✽.user is already on Sign Up Screen(C:/Users/priyanshua/Desktop/Data/com.qa.CucumberwithTestNG/src/main/java/Features/Signup.feature:6)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "user enters \"Megha\",\"Jain\",\"megha@yopmail.com\",\"megha@yopmail.com\",\"MeghaJKHGHGDHGD01000_1132\",\"Chetu@123\" and \"Chetu@123\" into mandatory fields except Edition",
  "keyword": "And "
});
formatter.match({
  "location": "SignupStepDefination.user_enters_valid_data_into_mandatory_fields_except_Edition(String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "user tries to sign up",
  "keyword": "When "
});
formatter.match({
  "location": "SignupStepDefination.user_tries_to_sign_up()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "appropriate message in a pop up related to please select the Edition should get displayed",
  "keyword": "Then "
});
formatter.match({
  "location": "SignupStepDefination.appropriate_message_in_a_pop_up_related_to_please_select_the_Edition_should_get_displayed()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "sign up user should stay in sign up screen 1 only",
  "keyword": "And "
});
formatter.match({
  "location": "SignupStepDefination.sign_up_user_should_stay_in_sign_up_screen_1_only()"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "error_message": "org.openqa.selenium.SessionNotCreatedException: Tried to run command without establishing a connection\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027CHETUIWK255\u0027, ip: \u0027172.16.4.66\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_131\u0027\nDriver info: org.openqa.selenium.firefox.FirefoxDriver\nCapabilities {acceptInsecureCerts: true, browserName: firefox, browserVersion: 72.0, capabilities: {desiredCapabilities: {acceptInsecureCerts: true, browserName: firefox}}, javascriptEnabled: true, moz:accessibilityChecks: false, moz:buildID: 20200103162918, moz:headless: false, moz:processID: 10104, moz:profile: C:\\Users\\priyanshua\\AppData..., moz:shutdownTimeout: 60000, moz:useNonSpecCompliantPointerOrigin: false, moz:webdriverClick: true, pageLoadStrategy: normal, platform: WINDOWS, platformName: WINDOWS, platformVersion: 10.0, rotatable: false, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 04fb6b44-3e29-48ae-befb-21cfe0fd8f45\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:609)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.quit(RemoteWebDriver.java:452)\r\n\tat stepDefinations.SignupStepDefination.teardown(SignupStepDefination.java:554)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:32)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:16)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:26)\r\n\tat cucumber.runtime.java.JavaHookDefinition.execute(JavaHookDefinition.java:60)\r\n\tat cucumber.runtime.HookDefinitionMatch.runStep(HookDefinitionMatch.java:17)\r\n\tat cucumber.runner.UnskipableStep.executeStep(UnskipableStep.java:22)\r\n\tat cucumber.api.TestStep.run(TestStep.java:83)\r\n\tat cucumber.api.TestCase.run(TestCase.java:58)\r\n\tat cucumber.runner.Runner.runPickle(Runner.java:80)\r\n\tat cucumber.runtime.Runtime.runFeature(Runtime.java:119)\r\n\tat cucumber.api.testng.TestNGCucumberRunner.runCucumber(TestNGCucumberRunner.java:75)\r\n\tat MyRunner.TestRunner.feature(TestRunner.java:35)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat org.testng.internal.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:124)\r\n\tat org.testng.internal.Invoker.invokeMethod(Invoker.java:583)\r\n\tat org.testng.internal.Invoker.invokeTestMethod(Invoker.java:719)\r\n\tat org.testng.internal.Invoker.invokeTestMethods(Invoker.java:989)\r\n\tat org.testng.internal.TestMethodWorker.invokeTestMethods(TestMethodWorker.java:125)\r\n\tat org.testng.internal.TestMethodWorker.run(TestMethodWorker.java:109)\r\n\tat org.testng.TestRunner.privateRun(TestRunner.java:648)\r\n\tat org.testng.TestRunner.run(TestRunner.java:505)\r\n\tat org.testng.SuiteRunner.runTest(SuiteRunner.java:455)\r\n\tat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:450)\r\n\tat org.testng.SuiteRunner.privateRun(SuiteRunner.java:415)\r\n\tat org.testng.SuiteRunner.run(SuiteRunner.java:364)\r\n\tat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)\r\n\tat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:84)\r\n\tat org.testng.TestNG.runSuitesSequentially(TestNG.java:1208)\r\n\tat org.testng.TestNG.runSuitesLocally(TestNG.java:1137)\r\n\tat org.testng.TestNG.runSuites(TestNG.java:1049)\r\n\tat org.testng.TestNG.run(TestNG.java:1017)\r\n\tat org.apache.maven.surefire.testng.TestNGExecutor.run(TestNGExecutor.java:283)\r\n\tat org.apache.maven.surefire.testng.TestNGXmlTestSuite.execute(TestNGXmlTestSuite.java:75)\r\n\tat org.apache.maven.surefire.testng.TestNGProvider.invoke(TestNGProvider.java:120)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.invokeProviderInSameClassLoader(ForkedBooter.java:379)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.runSuitesInProcess(ForkedBooter.java:340)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.execute(ForkedBooter.java:125)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:413)\r\n",
  "status": "failed"
});
formatter.scenarioOutline({
  "name": "To verify the validation message after passing username of less than 6 characters from sign up screen1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
formatter.step({
  "name": "enters valid details like \"\u003cEdition\u003e\",\"\u003cFirstName\u003e\",\"\u003cLastName\u003e\",\"\u003cEmail\u003e\",\"\u003cConfirmEmail\u003e\",\"\u003cUsername\u003e\" and \"\u003cPassword\u003e\",\"\u003cConfirmPassword\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "user tries to sign up",
  "keyword": "When "
});
formatter.step({
  "name": "appropriate validation message related to the invalid username length should get displayed",
  "keyword": "Then "
});
formatter.step({
  "name": "sign up user should stay in sign up screen 1 only",
  "keyword": "And "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "Edition",
        "FirstName",
        "LastName",
        "Email",
        "ConfirmEmail",
        "Username",
        "Password",
        "ConfirmPassword"
      ]
    },
    {
      "cells": [
        "Free Edition",
        "C.P",
        "Gulati",
        "Cp@yopmail.com",
        "Cp@yopmail.com",
        "JHGH",
        "Chetu@123",
        "Chetu@123"
      ]
    }
  ]
});
formatter.scenario({
  "name": "To verify the validation message after passing username of less than 6 characters from sign up screen1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@FunctionalTest"
    },
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
formatter.match({
  "location": "SignupStepDefination.user_is_already_on_Sign_Up_Screen()"
});
formatter.result({
  "error_message": "org.openqa.selenium.TimeoutException: Expected condition failed: waiting for visibility of Proxy element for: DefaultElementLocator \u0027By.id: editionText\u0027 (tried for 20 second(s) with 500 milliseconds interval)\r\n\tat org.openqa.selenium.support.ui.WebDriverWait.timeoutException(WebDriverWait.java:95)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:272)\r\n\tat com.qa.util.TestUtil.elementobedisplayed(TestUtil.java:46)\r\n\tat stepDefinations.SignupStepDefination.user_is_already_on_Sign_Up_Screen(SignupStepDefination.java:68)\r\n\tat ✽.user is already on Sign Up Screen(C:/Users/priyanshua/Desktop/Data/com.qa.CucumberwithTestNG/src/main/java/Features/Signup.feature:19)\r\nCaused by: org.openqa.selenium.NoSuchElementException: Unable to locate element: #editionText\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027CHETUIWK255\u0027, ip: \u0027172.16.4.66\u0027, os.name: \u0027Windows 10\u0027, os.arch: \u0027amd64\u0027, os.version: \u002710.0\u0027, java.version: \u00271.8.0_131\u0027\nDriver info: org.openqa.selenium.firefox.FirefoxDriver\nCapabilities {acceptInsecureCerts: true, browserName: firefox, browserVersion: 72.0, capabilities: {desiredCapabilities: {acceptInsecureCerts: true, browserName: firefox}}, javascriptEnabled: true, moz:accessibilityChecks: false, moz:buildID: 20200103162918, moz:headless: false, moz:processID: 15212, moz:profile: C:\\Users\\priyanshua\\AppData..., moz:shutdownTimeout: 60000, moz:useNonSpecCompliantPointerOrigin: false, moz:webdriverClick: true, pageLoadStrategy: normal, platform: WINDOWS, platformName: WINDOWS, platformVersion: 10.0, rotatable: false, setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify}\nSession ID: 245c4231-e4e3-47f0-b101-1615c27e5feb\n*** Element info: {Using\u003did, value\u003deditionText}\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\r\n\tat sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\r\n\tat java.lang.reflect.Constructor.newInstance(Constructor.java:423)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\r\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\r\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\r\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementById(RemoteWebDriver.java:372)\r\n\tat org.openqa.selenium.By$ById.findElement(By.java:188)\r\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\r\n\tat org.openqa.selenium.support.pagefactory.DefaultElementLocator.findElement(DefaultElementLocator.java:69)\r\n\tat org.openqa.selenium.support.pagefactory.internal.LocatingElementHandler.invoke(LocatingElementHandler.java:38)\r\n\tat com.sun.proxy.$Proxy17.isDisplayed(Unknown Source)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.elementIfVisible(ExpectedConditions.java:314)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions.access$000(ExpectedConditions.java:43)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$10.apply(ExpectedConditions.java:300)\r\n\tat org.openqa.selenium.support.ui.ExpectedConditions$10.apply(ExpectedConditions.java:297)\r\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:249)\r\n\tat com.qa.util.TestUtil.elementobedisplayed(TestUtil.java:46)\r\n\tat stepDefinations.SignupStepDefination.user_is_already_on_Sign_Up_Screen(SignupStepDefination.java:68)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat cucumber.runtime.Utils$1.call(Utils.java:32)\r\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:16)\r\n\tat cucumber.runtime.Utils.invoke(Utils.java:26)\r\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:37)\r\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:40)\r\n\tat cucumber.api.TestStep.executeStep(TestStep.java:102)\r\n\tat cucumber.api.TestStep.run(TestStep.java:83)\r\n\tat cucumber.api.TestCase.run(TestCase.java:58)\r\n\tat cucumber.runner.Runner.runPickle(Runner.java:80)\r\n\tat cucumber.runtime.Runtime.runFeature(Runtime.java:119)\r\n\tat cucumber.api.testng.TestNGCucumberRunner.runCucumber(TestNGCucumberRunner.java:75)\r\n\tat MyRunner.TestRunner.feature(TestRunner.java:35)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n\tat java.lang.reflect.Method.invoke(Method.java:498)\r\n\tat org.testng.internal.MethodInvocationHelper.invokeMethod(MethodInvocationHelper.java:124)\r\n\tat org.testng.internal.Invoker.invokeMethod(Invoker.java:583)\r\n\tat org.testng.internal.Invoker.invokeTestMethod(Invoker.java:719)\r\n\tat org.testng.internal.Invoker.invokeTestMethods(Invoker.java:989)\r\n\tat org.testng.internal.TestMethodWorker.invokeTestMethods(TestMethodWorker.java:125)\r\n\tat org.testng.internal.TestMethodWorker.run(TestMethodWorker.java:109)\r\n\tat org.testng.TestRunner.privateRun(TestRunner.java:648)\r\n\tat org.testng.TestRunner.run(TestRunner.java:505)\r\n\tat org.testng.SuiteRunner.runTest(SuiteRunner.java:455)\r\n\tat org.testng.SuiteRunner.runSequentially(SuiteRunner.java:450)\r\n\tat org.testng.SuiteRunner.privateRun(SuiteRunner.java:415)\r\n\tat org.testng.SuiteRunner.run(SuiteRunner.java:364)\r\n\tat org.testng.SuiteRunnerWorker.runSuite(SuiteRunnerWorker.java:52)\r\n\tat org.testng.SuiteRunnerWorker.run(SuiteRunnerWorker.java:84)\r\n\tat org.testng.TestNG.runSuitesSequentially(TestNG.java:1208)\r\n\tat org.testng.TestNG.runSuitesLocally(TestNG.java:1137)\r\n\tat org.testng.TestNG.runSuites(TestNG.java:1049)\r\n\tat org.testng.TestNG.run(TestNG.java:1017)\r\n\tat org.apache.maven.surefire.testng.TestNGExecutor.run(TestNGExecutor.java:283)\r\n\tat org.apache.maven.surefire.testng.TestNGXmlTestSuite.execute(TestNGXmlTestSuite.java:75)\r\n\tat org.apache.maven.surefire.testng.TestNGProvider.invoke(TestNGProvider.java:120)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.invokeProviderInSameClassLoader(ForkedBooter.java:379)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.runSuitesInProcess(ForkedBooter.java:340)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.execute(ForkedBooter.java:125)\r\n\tat org.apache.maven.surefire.booter.ForkedBooter.main(ForkedBooter.java:413)\r\n",
  "status": "failed"
});
formatter.step({
  "name": "enters valid details like \"Free Edition\",\"C.P\",\"Gulati\",\"Cp@yopmail.com\",\"Cp@yopmail.com\",\"JHGH\" and \"Chetu@123\",\"Chetu@123\"",
  "keyword": "And "
});
formatter.match({
  "location": "SignupStepDefination.enters_valid_details(String,String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "user tries to sign up",
  "keyword": "When "
});
formatter.match({
  "location": "SignupStepDefination.user_tries_to_sign_up()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "appropriate validation message related to the invalid username length should get displayed",
  "keyword": "Then "
});
formatter.match({
  "location": "SignupStepDefination.appropriate_validation_message_related_to_the_invalid_username_length_should_get_displayed()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "sign up user should stay in sign up screen 1 only",
  "keyword": "And "
});
formatter.match({
  "location": "SignupStepDefination.sign_up_user_should_stay_in_sign_up_screen_1_only()"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "status": "passed"
});
formatter.scenarioOutline({
  "name": "To verify the appearence of validation message when less than 6 characters has been passed in password and confirm password textfields while user is trying to sign up from Signup Screen 1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
formatter.step({
  "name": "enters valid details like \"\u003cEdition\u003e\",\"\u003cFirstName\u003e\",\"\u003cLastName\u003e\",\"\u003cEmail\u003e\",\"\u003cConfirmEmail\u003e\",\"\u003cUsername\u003e\" and \"\u003cPassword\u003e\",\"\u003cConfirmPassword\u003e\"",
  "keyword": "And "
});
formatter.step({
  "name": "user tries to sign up",
  "keyword": "When "
});
formatter.step({
  "name": "appropriate validation message related to the invalid length of passwords should get displayed into the sign up screen 1",
  "keyword": "Then "
});
formatter.step({
  "name": "sign up user should stay in sign up screen 1 only",
  "keyword": "And "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "Edition",
        "FirstName",
        "LastName",
        "Email",
        "ConfirmEmail",
        "Username",
        "Password",
        "ConfirmPassword"
      ]
    },
    {
      "cells": [
        "Free Edition",
        "Megha",
        "Jain",
        "megha@yopmail.com",
        "megha@yopmail.com",
        "MeghaE11RT0098_1132",
        "1234",
        "1234"
      ]
    }
  ]
});
formatter.scenario({
  "name": "To verify the appearence of validation message when less than 6 characters has been passed in password and confirm password textfields while user is trying to sign up from Signup Screen 1.",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@FunctionalTest"
    },
    {
      "name": "@SmokeTest"
    },
    {
      "name": "@RegressionTest"
    },
    {
      "name": "@SignupScreen1"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "user is already on Sign Up Screen",
  "keyword": "Given "
});
