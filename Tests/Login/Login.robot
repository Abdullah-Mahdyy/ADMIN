*** Settings ***
Library     SeleniumLibrary



*** Variables ***



*** Test cases ***

Check_Login_with_ValidData TestCase
    [tags]              Login_Valid
    Set Selenium Implicit Wait    5
    Open Browser        https://dgdadevnew.eastus.cloudapp.azure.com/DGDAAdminFront/#/login      Chrome
    Maximize Browser Window
    Input Text         //*[@id="login_input_username"]    admin
    Input Password    //*[@id="login_input_password"]    123456
    Click Button     //*[@id="login_btn_login"]

  # Page Should Contain    //*[@id="cdk-overlay-11"]/snack-bar-container/simple-snack-bar/span
   # Page Should Contain Element    //*[@id="cdk-overlay-12"]/snack-bar-container/simple-snack-bar/span
  Page Should Contain    DIRIYAH GATE ‍DEVELOPMENT AUTHORITY (DGDA)
    Close Browser
