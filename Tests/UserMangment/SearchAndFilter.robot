*** Settings ***
Library     SeleniumLibrary
Library     String
Library    Collections
Library    XML
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_SearchAndFilter.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
#Test Teardown   Close_Chrome

*** Test cases ***
Check Functionality of search with existing Name
    [Tags]       Search_with_filter

    Click on the User Managment Button
    Check Functionality Of input Name
    Check Functionality of Search with Existing Name

Check Functionality of Search with Non-Existing Name
    Clear InputField
    Check Functionality Of input FakeName
    Check Functionality of Search with NonExisting Name
    Close Browser



