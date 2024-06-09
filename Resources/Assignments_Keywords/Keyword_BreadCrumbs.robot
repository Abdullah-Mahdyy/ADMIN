*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome   Login_Successfully
Test Teardown   Close_Chrome

*** Variables ***
${Assginment_Button}            //*[@id="4"]
${Requester_Button}             //*[@id="application_ddl_applications8"]
${Inspection_Button}            //*[@id="group_ddl_groups0"]/button
${Inspection1_button}           //*[@id="role_ddl_roleroleList_0"]/button
${UMA-Inspection1_button1}      //*[@id="role_ddl_roleroleList_0"]/button
${Requester_Link}               //*[@id="role_li_breadcrumbApplicationList"]/a
${Requester_li}                 //*[@id="group_div_breadcrumb"]/nav/ol/li[2]
${UMA-Inspection1_Link}         //*[@id="role_li_breadcrumbRoleGroup"]/a
${UMA-Inspection1_li}           //*[@id="role_li_breadcrumbRoleGroup"]
${Assignments_li}               //*[@id="application_div_breadcrumb"]/nav/ol/li
${Assignments_Link}             //*[@id="group_div_breadcrumb"]/nav/ol/li[1]/a

*** Keywords ***
Click on Assignments Button
    Click Button    ${Assginment_Button}
    Sleep    4s
Click On Requester Button
    Click Element    ${Requester_Button}
    Sleep    4s
Click On UMA-Inspection Button
    Click Button    ${Inspection_Button}
    Sleep    4s
Click on UMA_Inspetion1 Button
    Click Button    ${Inspection1_button}
    Sleep    5s
Click on Internal_UMA_Inspection1 Button
    Click Button    ${UMA-Inspection1_button1}
    Sleep    4s
Click on UMA-Inspection1_BreadCrumbs
    Click Link    ${UMA-Inspection1_Link}
    Run Keyword And Continue On Failure    Page Should Contain Element    ${UMA-Inspection1_li}
    Sleep    4s
Click on Requester_link_BreadCrumbs
    Click Link    ${Requester_Link}
    Run Keyword And Continue On Failure     Page Should Contain Element    ${Requester_li}
    Sleep    4s
Click on Assignments_BreadCrumbs
    Click Link    ${Assignments_Link}
    Run Keyword And Continue On Failure     Page Should Contain Element    ${Assignments_li}
    Sleep    4s

