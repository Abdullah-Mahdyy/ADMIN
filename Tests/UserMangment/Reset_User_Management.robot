 robot  -d   Results   -i   User_Management_Reset   Tests
##################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_Reset_User_Management.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Reset
    [tags]                      User_Management_Reset
    Click on the User Managment Button
    Insert Data in the Search Text Box
    Click on the User
    Page Should Contain         Requester
    Click on the Edit Button
    Insert Random Email
    Insert Random Phone Number
    Click on Reset
    Page Should Contain         Are you sure you want to reset user data ?
    Click on Yes at the Confirmation Message