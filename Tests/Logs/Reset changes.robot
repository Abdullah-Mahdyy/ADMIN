*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library    DateTime



Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome

*** Variables ***

${logs_Button}                       xpath=/html/body/app-root/div/div/div[1]/app-side-navigation/div/ul/li[6]/button
${Open_calender_From}                //*[@id="logs_toggle_LogFrom"]/button
${Open_calender_To}                  //*[@id="logs_toggle_LogTo"]/button
${From_Date}                         June 1, 2024
${To_Date}                           June 3, 2024
${Validate_Date}                     //*[@id="log_div_dateRangeValidator"]
${Clear_Button}                      //*[@id="logs_btn_Reset"]
${From_Log}                          //*[@id="logs_input_LogFrom"]

*** Keywords ***
Select From_Date
    [Arguments]    ${Date_from}
    Click Element    xpath://*[@aria-label='${Date_from}']

Select To_Date
    [Arguments]    ${Date_to}
    Click Element    xpath://*[@aria-label='${Date_to}']

*** Test cases ***

Check functionality of Reset_Changes
    [Tags]            Reset Changes
    Click Button    ${logs_Button}
    Sleep    5s
    Click Element    ${Open_calender_From}
    Sleep    5s
    Select From_Date    ${From_Date}
    Sleep    3s
    Click Element    ${Open_calender_To}
    Select To_Date       ${To_Date}
    Sleep    4s
 June 1, 2024
    ${Today_date}        Get Current Date
    ${convert}=      Convert Date      ${Today_date}      result_format= %B %d , %M:%S UTC %Y

        log       ${Today_date}
    Run Keyword If    '${From_Date}' > '${To_Date}'  Page Should Contain Element    ${Validate_Date}
   # ${Status}   Get Value    '${From_Date}'
    Click Button    ${Clear_Button}
    #${Status1}   Get Value    '${From_Date}'

    Sleep    5s
         #   Run Keyword If    "${From_Date}" == ""    Log  "Error"



