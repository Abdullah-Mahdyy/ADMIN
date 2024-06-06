 robot  -d   Results   -i   NoFilter   Tests
##################### Command #############################
*** Settings ***
Library         SeleniumLibrary
Library         Process
Library         String
Resource        ../../Resources/Common.robot
Resource        ../../Resources/Keyword_NoFilter.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test cases ***
Check Functionality of No Filter
    [tags]         NoFilter
    Click on the User Managment Button
    Click on the User Menu Button
    Check Retired Checkbox Is Present
    Check the State and Uncheck it If the Checkbox is Checked
    Check Unretired Checkbox Is Present
    Check the State and Check it If the Checkbox is Unchecked
    Check If the Button Retuired is Checked
