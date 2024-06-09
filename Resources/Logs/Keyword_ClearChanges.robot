*** Settings ***

Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Library     Screenshot
Library     RequestsLibrary
Library     String
Library    DateTime



*** Variables ***

${logs_Button}                       xpath=/html/body/app-root/div/div/div[1]/app-side-navigation/div/ul/li[6]/button
${Open_calender_From}                //*[@id="logs_toggle_LogFrom"]/button
${Open_calender_To}                  //*[@id="logs_toggle_LogTo"]/button
${From_Date}                         June 1, 2024
${Validate_Date}                     //*[@id="log_div_dateRangeValidator"]
${Clear_Button}                      //*[@id="logs_btn_Reset"]


*** Keywords ***

Select From_Date
    [Arguments]    ${Date_from}
    Click Element    xpath://*[@aria-label='${From_Date}']
    [Return]    ${Date_from}

Select To_Date
   [Arguments]    ${Today_date_inToDate1}
    ${Today_date_inToDate}        Get Current Date       result_format=%B %#d, %Y
    Log               ${Today_date_inToDate}
    Click Element    xpath://*[@aria-label='${Today_date_inToDate}']
    [Return]    ${Today_date_inToDate}



Click on logs Button
    Click Button    ${logs_Button}
        Sleep    2s
Click on Open caalender
    Click Element    ${Open_calender_From}
        Sleep    2s
Select From Date
    Select From_Date ${From_Date}
    Sleep    2s
Click on open Calender
    Click Element    ${Open_calender_To}
    Sleep    2s
Selct To Date
    ${Todate}=          Select To_Date    $Today_date_inToDate1
    Sleep    2s
    Run Keyword If    '${From_Date}' > '${Todate}'  Page Should Contain Element    ${Validate_Date}
Click on clear Button
     Click Button    ${Clear_Button}
     Sleep    5s
     ${LogFrom}=    Get Value    id=logs_input_LogFrom
     Should Be Empty    ${LogFrom}
     ${LogTo}=    Get Value      id=logs_input_LogTo
     Should Be Empty    ${LogTo}
