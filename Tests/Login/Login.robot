*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome
Test Teardown   Close_Chrome

*** Variables ***
${ExpectedName}                  "Administration"
${Title}
*** Test cases ***

Check_Login_with_ValidData TestCase
    [tags]              Login_Valid
    Set Selenium Implicit Wait    5
    Maximize Browser Window
    Input Text         ${Username_Text}    admin
    Input Password    ${Password_Text}   123456
    Click Button     //*[@id="login_btn_login"]
    Page Should Contain    DIRIYAH GATE ‍DEVELOPMENT AUTHORITY (DGDA)


Check View of LoginPage TestCase
  ${Title}      Get Title
  Run Keyword If  '${Title}' == '${ExpectedName }'  Log  "Title is Shown Succesffuly"  ELSE  Fail  "Title is Shown UnSuccesffuly"


       

    
