*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***

${SearchBar}           //*[@id="users_input_filterUsers"]
${Name}                  Weaam.Ahmed
${FakeName}                John.Jack

*** Keywords ***
Click on the User Managment Button
      Click Button    ${Users_Mangment_Button}
Check Functionality Of input Name
      Input Text    ${SearchBar}   ${Name}
      Sleep    10s
Check Functionality of Search with Existing Name
      ${firstelemnt} =    Get Text    //*[@id="users_ddl_usersList_0"]
      ${sliced_value}=    Convert To String    ${firstelemnt}[2:]    # Slicing the string to ignore the first letter
      ${Name1}=            Convert To String    ${Name}
      Should Be Equal    ${sliced_value}    ${Name1}
      Sleep    4

Check Functionality of Search with Non-Existing Name
Clear InputField
      Clear Element Text    ${SearchBar}
Check Functionality Of input FakeName
      Input Text    ${SearchBar}   ${FakeName}
      Sleep    10s
Check Functionality of Search with NonExisting Name
      ${firstelemnt} =    Get Text    //*[@id="users_ddl_usersList_0"]
      ${sliced_value}=    Convert To String    ${firstelemnt}[2:]    # Slicing the string to ignore the first letter
      ${Result}=            Convert To String    ${FakeName}
      IF    ${Result} == ${sliced_value}
      Log          " searching with existing name Successed"
      ELSE
      Log             "searching with existing name Failed"
      END



