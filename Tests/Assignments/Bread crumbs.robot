*** Settings ***

Library     SeleniumLibrary
Library     Screenshot
Library     RequestsLibrary
Library     String
Resource    ../../Resources/Assignments_Keywords/Keyword_BreadCrumbs.robot
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome



*** Test cases ***
Check functionality of Bread_Crumbs
    [Tags]            Bread_crumbs
    Click on Assignments Button
    Click On Requester Button
    Click On UMA-Inspection Button
    Click on UMA_Inspetion1 Button
    Click on Internal_UMA_Inspection1 Button
    Click on UMA-Inspection1_BreadCrumbs
    Click on Requester_link_BreadCrumbs
    Click on Assignments_BreadCrumbs


