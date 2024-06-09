*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     String
Library     DateTime
Resource    ../Resources/Common.robot

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
Select_From_Date
    [Arguments]    ${Date_from}
    ${date}=         Get Current Date       result_format=%B %#d, %Y
    Click Element    xpath://*[@aria-label='${date}']
     Log        ${date}
    [Return]    ${date}