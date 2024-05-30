*** Settings ***
Library     SeleniumLibrary
Library     String
Library    Collections
Library    XML
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome


*** Variables ***

${SearchBar}           //*[@id="users_input_filterUsers"]
${Name}                  Weaam.Ahmed
${firstelemnt}              #  //*[@id="users_ddl_usersList_0"]
${FakeName}                John.Jack

*** Test cases ***
Check Functionality of search with existing Name
    [Tags]       Search_with_filter
    Set Selenium Implicit Wait  5
    Click Button    ${Users_Mangment_Button}
    Input Text    ${SearchBar}   ${Name}
    Sleep    5s
   ${firstelemnt} =    Get Text    //*[@id="users_ddl_usersList_0"]

    ${sliced_value}=    Convert To String    ${firstelemnt}[2:]    # Slicing the string to ignore the first letter
    ${Name1}=            Convert To String    ${Name}


    Should Be Equal    ${sliced_value}    ${Name1}


Check Functionality of Search with Non-Existing Name
    [Tags]       Search_with_filter
    Set Selenium Implicit Wait  5
    Click Button    ${Users_Mangment_Button}
    Input Text    ${SearchBar}   ${FakeName}
    Sleep    5s
   ${firstelemnt} =    Get Text    //*[@id="users_ddl_usersList_0"]

    ${sliced_value}=    Convert To String    ${firstelemnt}[2:]    # Slicing the string to ignore the first letter
    ${Result}=            Convert To String    ${FakeName}

       IF    ${Result} == ${sliced_value}
           Log          " searching with existing name Succed"
       ELSE
       Fail             "searching with existing name Failed"

       END

