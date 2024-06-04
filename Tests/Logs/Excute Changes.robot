# robot  -d   Results   -i   Reset_Changes   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot
#Resource    ../../Resources/Keyword_Reset_Changes.robot
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
     Log        ${date}
    [Return]    ${date}
######################################################################
Select_To_Date
    [Arguments]    ${Date_Too}
    ${date_to}=         Get Current Date       result_format=%B %#d, %Y
    Click Element    xpath://*[@aria-label='${date_to}']
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

*** Test cases ***
Check functionality of Reset_Changes
    [Tags]              Reset_Changes
    Click Button        ${logs_Button}
    Click Element       ${Open_calender_From}
    ${date}     Select_From_Date       $Date_from
    Sleep    3
    Click Element       ${Open_calender_To}
    ${date_to}     Select_To_Date         $Date_Too
    Set Selenium Implicit Wait    10
    Click Element    //*[@id="logs_form_seachForm"]/div[1]/div/div[3]/mat-form-field/div/div[1]/div[3]
    Click Element    //*[@id="logs_applicationList_option_9"]/span
    Click Element    //*[@id="logs_ddl_groupsList"]/div/div[1]/span
    Click Element    //*[@id="logs_groupsList_option_128"]/span
    Click Element    //*[@id="logs_ddl_rolesList"]/div/div[1]/span
    Click Element    //*[@id="logs_rolesList_option_287"]/span
    Click Element    //*[@id="logs_DDL_activitiesList"]/div/div[1]/span
    Click Element    //*[@id="logs_activitiesList_option_1"]/span
    Click Element    //*[@id="logs_ddl_Usernames"]/div/div[1]/span
    Click Element    //*[@id="logs_Usernames_option_4389"]/span
    Click Element    //*[@id="logs_btn_Execute"]
    Page Should Contain    No records available
    Sleep    3



