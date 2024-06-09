 robot  -d   Results   -i   Excecute_Changes   Tests
###################### Command #############################
*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Library     DateTime
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Log_Keywords/Keyword_Excute_Changes.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome

*** Test cases ***
Check Functionality of Excute_Changes
    [Tags]              Excecute_Changes
    Click on Log Button
    Open the Calender
    ${date}     Select_From_Date       $Date_from
    Open the Calender again
    ${date_to}     Select_To_Date         $Date_Too
    Open Application DDL
    Select Specific Application
    Open Group DDL
    Select Specific Group
    Open Role DDL
    Select Specific Role
    Open Activity DDL
    Select Specific Activity
    Open Username DDL
    Select Specific Username
    Click on Execute Button
    Page Should Contain    No records available