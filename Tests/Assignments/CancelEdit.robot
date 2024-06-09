 robot  -d   Results   -i   Cancel_Edit_button   Tests
###################### Command #############################
*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Assignments_Keywords/Keyword_CancelEdit.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome

*** Test cases ***
Check functionality of Cancel Edit
    [Tags]          Cancel_Edit_button
    Click on Assignments Button
    Click On Requester Button
    Click on Specific Group
    Click on Specific Role
    Click on Other Specific Role
    Click on Edit Button
    Toggle on the Geospatial Interactive Services
    Check the Reset Button
    Check the Status of Reset Button
    Click on Cancel Button