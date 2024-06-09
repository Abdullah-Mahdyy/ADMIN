 robot  -d   Results   -i   User_Management_Edit   Tests
##################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/UserMangment_Keywords/Keyword_Edit_User_Mangement.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
#Test Teardown   Close_Chrome

*** Test Cases ***
Check Functionality of Edit User
    [tags]                      User_Management_Edit
    Click on the User Managment Button
    Insert Data in the Search Text Box
    Click on the User
    Page Should Contain         Requester
    Click on the Edit Button
    Insert Random Email
    Insert Random Phone Number
    Click on Save
    Page Should Contain         Are you sure you want to save changes ?
    Click on Yes at the Confirmation Message
    Page Should Contain         User saved successfully
    Sleep    5

Check Functionality of Edit User with Leaving Mandatory Fields Empty
    [tags]                      User_Management_Edit
    Click on the User Managment Button
    Insert Data in the Search Text Box
    Click on the User
    Page Should Contain         Requester
    Click on the Edit Button
    Leave the Email Empty
    Leave the Phone Number Empty
    Click on the Add New Icon
    Click on Save
    Page Should Contain         Are you sure you want to save changes ?
    Click on Save
    Page Should Contain         Please fill all required fields
    Sleep    3

Close the Browser