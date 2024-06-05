 robot  -d   Results   -i   User_Management_Delete   Tests
##################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_Delete_User_Management.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Delete User
    [tags]                      User_Management_Delete
    Click on the User Managment Button
    Insert Data in the Search Text Box
    Click on the User
    Page Should Contain         Requester
    Click on the Delete Button
    Page Should Contain         Are you sure you want delete this user ?
    Click on No at the Confirmation Message