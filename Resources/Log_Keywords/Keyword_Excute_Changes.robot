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
${To_Date}                           June 3, 2024
${Validate_Date}                     //*[@id="log_div_dateRangeValidator"]
${Clear_Button}                      //*[@id="logs_btn_Reset"]
${From_Log}                          //*[@id="logs_input_LogFrom"]

*** Keywords ***
Click on Log Button
    Click Button    ${logs_Button}
    Sleep    2s
Open the Calender
    Click Element    ${Open_calender_From}
    Sleep    2s
#Select From_Date
#    [Arguments]    ${Date_from}
#    Click Element    xpath://*[@aria-label='${Date_from}']
#*******************************************************************#
#Select To_Date
#    [Arguments]    ${Date_to}
#    Click Element    xpath://*[@aria-label='${Date_to}']
######################################################################
######################################################################
Select_From_Date
    [Arguments]    ${Date_from}
    ${date}=         Get Current Date       result_format=%B %#d, %Y
    Click Element    xpath://*[@aria-label='${date}']
    Set Selenium Implicit Wait    10
     Log        ${date}
    [Return]    ${date}
######################################################################
Open the Calender again
    Click Element       ${Open_calender_To}
    Sleep    2
Select_To_Date
    [Arguments]    ${Date_Too}
    ${date_to}=         Get Current Date       result_format=%B %#d, %Y
    Click Element    xpath://*[@aria-label='${date_to}']
    Set Selenium Implicit Wait    10
     Log        ${date_to}
    [Return]    ${date_to}
######################################################################
######################################################################
#From Date Current
#    ${date}=         Get Current Date       result_format=%B %#d, %Y
#     Log        ${date}
#    [Return]    ${date}
#*******************************************************************#
#To Date Current
#    ${date}=         Get Current Date       result_format=%B %#d, %Y
#     Log        ${date}
#    [Return]    ${date}
Open Application DDL
    Click Element    //*[@id="logs_form_seachForm"]/div[1]/div/div[3]/mat-form-field/div/div[1]/div[3]
    Sleep    2
Select Specific Application
    Click Element    //*[@id="logs_applicationList_option_9"]/span
    Sleep    2
Open Group DDL
    Click Element    //*[@id="logs_ddl_groupsList"]/div/div[1]/span
    Sleep    2
Select Specific Group
    Click Element    //*[@id="logs_groupsList_option_128"]/span
    Sleep    2
Open Role DDL
    Click Element    //*[@id="logs_ddl_rolesList"]/div/div[1]/span
    Sleep    2
Select Specific Role
    Click Element    //*[@id="logs_rolesList_option_287"]/span
    Sleep    2
Open Activity DDL
    Click Element    //*[@id="logs_DDL_activitiesList"]/div/div[1]/span
    Sleep    2
Select Specific Activity
    Click Element    //*[@id="logs_activitiesList_option_1"]/span
    Sleep    2
Open Username DDL
    Click Element    //*[@id="logs_ddl_Usernames"]/div/div[1]/span
    Sleep    2
Select Specific Username
    Click Element    //*[@id="logs_Usernames_option_4389"]/span
    Sleep    2
Click on Execute Button
    Click Element    //*[@id="logs_btn_Execute"]
    Sleep    2