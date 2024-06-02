# robot  -d   Results   -i   Add_Role   Tests
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
    [tags]                      Add_Role
    Set Selenium Implicit Wait  5
    Click Element           //*[@id="4"]
    Click Element           //*[@id="application_ddl_applications8"]/label
    Click Element           //*[@id="group_ddl_groups5"]/button
    Click Element           //*[@id="role_btn_addRole"]/i
    ${Dynamic_Role_Name}           Generate Random String      5       [LETTERS]
    Input Text              ${Role_Name}    Role,${Dynamic_Role_Name}
    Set Selenium Implicit Wait    5
    Click Button           //*[@id="role_btn_save"]
    Click Element          //*[@id="id_btn_saveAddNewRole_ok"]
    Page Should Contain    Role,${Dynamic_Role_Name}
    Sleep    5
