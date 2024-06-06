*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_Retired.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome


*** Test cases ***

Check Functionality of Retired Test Case
    [tags]         Retired

   Click on the User Managment Button
   Click on the User Menu Button
   Check View Of Retired Checkbox Is Present
   Check initial state of the Retired_checkbox
   Verify the Retired_checkbox is now checked
   Check the Retired_checkbox for the final state
   Verify the Retired_checkbox is now unchecked again

