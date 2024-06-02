# robot  -d   Results   -i   Add_User   Tests
###################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome
*** Variables ***
${Role_Name}                    //*[@id="role_input_roleName"]
*** Test Cases ***
Check Functionality of Edit User
    [tags]                      Add_User
    Set Selenium Implicit Wait  5
    Click Element           //*[@id="4"]
    Click Element           //*[@id="application_ddl_applications8"]/label
    Click Element           //*[@id="group_ddl_groups5"]/button
    Click Element           //*[@id="role_btn_addRole"]/i
    Click Element           //*[@id="role_ddl_roleroleList_0"]/button
    Sleep    8
    Click Element           //*[@id="role_btn_editRole"]
    Sleep    8
    Click Element           //*[@id="mat-tab-label-0-2"]
    Double Click Element    //*[@id="mat-tab-label-0-2"]
    Click Element           //*[@id="role_ddl_searchUsers"]/div/div[1]/span
    Click Element           //*[@id="role_ddl_Users_0"]/mat-pseudo-checkbox
    Double Click Element    //*[@id="mat-tab-label-0-2"]
    Click Element           //*[@id="role_btn_addUsers"]/i
    Click Element           //*[@id="role_btn_save"]
    Click Element           //*[@id="id_btn_saveUpdateRole_ok"]
    Page Should Contain     Role data saved successfully
    Sleep    5