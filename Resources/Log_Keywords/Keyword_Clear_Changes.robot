*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot

*** Variables ***
${logs_Button}                       xpath=/html/body/app-root/div/div/div[1]/app-side-navigation/div/ul/li[6]/button
${Open_calender_From}                //*[@id="logs_toggle_LogFrom"]/button
${Open_calender_To}                  //*[@id="logs_toggle_LogTo"]/button
${From_Date}                         June 1, 2024
${Validate_Date}                     //*[@id="log_div_dateRangeValidator"]
${Clear_Button}                      //*[@id="logs_btn_Reset"]

*** Keywords ***
Click on Log Button
    Click Button    ${logs_Button}
    Sleep    2s
Open the Calender
    Click Element    ${Open_calender_From}
    Sleep    2s
Select To_Date
   [Arguments]    ${Today_date_inToDate1}
    ${Today_date_inToDate}        Get Current Date       result_format=%B %#d, %Y
    Log               ${Today_date_inToDate}
    Click Element    xpath://*[@aria-label='${Today_date_inToDate}']
    [Return]    ${Today_date_inToDate}
Open the Calender again
    Click Element    ${Open_calender_To}
    Sleep    2s
Select From_Date
    [Arguments]    ${Date_from}
    Click Element    xpath://*[@aria-label='${Date_from}']
    Sleep    2s
Check the State of Start date and End date
    [Arguments]    ${Todate}
    Run Keyword If    '${From_Date}' > '${Todate}'  Page Should Contain Element    ${Validate_Date}
    Sleep    3
Validate Reset Button
    Click Button    ${Clear_Button}
    Sleep    5s
    ${LogFrom}=    Get Value    id=logs_input_LogFrom
    Should Be Empty    ${LogFrom}
    ${LogTo}=    Get Value      id=logs_input_LogTo
    Should Be Empty    ${LogTo}
    Sleep    5