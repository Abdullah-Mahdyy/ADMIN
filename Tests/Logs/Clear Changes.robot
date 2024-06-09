*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library    DateTime
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Logs/Keyword_ClearChanges.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome



*** Test cases ***
Check functionality of Reset_Changes
    [Tags]            Clear_Changes
    Click on logs Button
    Click on Open caalender
    ${From_Date} Select From Date
    Click on open Calender
    Selct To Date
    Click on clear Button




