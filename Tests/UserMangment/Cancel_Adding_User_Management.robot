 robot  -d   Results   -i   User_Management_Cancel   Tests
##################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_Cancel_Adding_User_Management.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Cancel Adding User
    [tags]                      User_Management_Cancel
    Click on the User Managment Button
    Insert Data in the Search Text Box
    Click on the User
    Page Should Contain         Requester
    Click on the Edit Button
    Insert Random Email
    Insert Random Phone Number
    Click on the Cancel Button
    Page Should Contain         Discard changes?
    Click on Yes at the Confirmation Message