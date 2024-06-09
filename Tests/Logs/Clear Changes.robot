 robot  -d   Results   -i   Clear_Changes   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Log_Keywords/Keyword_Clear_Changes.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome


*** Test cases ***
Check functionality of Reset_Changes
    [Tags]            Clear_Changes
    Click on Log Button
    Open the Calender
    Select From_Date    ${From_Date}
    Open the Calender again
    ${Todate}=          Select To_Date    $Today_date_inToDate1
   Check the State of Start date and End date  ${Todate}
#    Run Keyword If    '${From_Date}' > '${Todate}'  Page Should Contain Element    ${Validate_Date}
    Validate Reset Button