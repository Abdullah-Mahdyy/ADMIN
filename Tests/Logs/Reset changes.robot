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

${logs_Button}                 xpath=/html/body/app-root/div/div/div[1]/app-side-navigation/div/ul/li[6]/button
${Open_calender}                //*[@id="logs_toggle_LogFrom"]/button

${From_date}                    //*[@id="//*[@id="mat-datepicker-0"]/div/mat-month-view/table/tbody/tr[2]/td[1]"]

*** Keywords ***

*** Test cases ***

Check functionality of Reset_Changes
    [Tags]            Reset Changes
    Click Button    ${logs_Button}
    Sleep    5s
    Click Element    ${Open_calender}
    Sleep    5s
   # Click Button    ${From_date}
   Select From List By Index    ${From_date}
    Sleep    2s