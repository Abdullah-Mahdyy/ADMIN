*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/UserMangment_Keywords/Keyword_UnRetired.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome


*** Test cases ***

Check Functionality of UnRetired Test Case
    [tags]              UnRetired_user

    Click on the User Managment Button
    Click on the User Menu Button
    Check View Of UnRetired Checkbox Is Present
    Check initial state of the UnRetired_checkbox
    Verify the UnRetired_checkbox is now checked
    Check the UnRetired_checkbox for the final state
    Verify the UnRetired_checkbox is now unchecked again

