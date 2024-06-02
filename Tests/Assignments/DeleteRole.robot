# robot  -d   Results   -i   Delete_Role   Tests
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
    [tags]                      Delete_Role
    Set Selenium Implicit Wait  5
    Click Element           //*[@id="4"]
    Click Element           //*[@id="application_ddl_applications8"]/label
    Click Element           //*[@id="group_ddl_groups5"]/button
    Click Element           //*[@id="role_ddl_roleroleList_0"]/button
    Sleep    5
    Click Element           //*[@id="role_btn_deleteRole"]/button[1]
    Click Element           //*[@id="id_btn_deleteRole_ok"]
    Page Should Contain     Role deleted sucessfully
