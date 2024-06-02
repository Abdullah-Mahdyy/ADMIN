# robot  -d   Results   -i   Add_Group   Tests
###################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome
*** Variables ***
${Group_Name}                    //*[@id="group_input_groupName"]
*** Test Cases ***
Check Functionality of Edit User
    [tags]                      Add_Group
    Set Selenium Implicit Wait  5
    Click Element           //*[@id="4"]
    Click Element           //*[@id="application_ddl_applications8"]/label
    Click Element           //*[@id="group_btn_add"]
    ${Dynamic_Group_Name}           Generate Random String      10       [LETTERS]
    Input Text              ${Group_Name}    UMA,${Dynamic_Group_Name}
    Set Selenium Implicit Wait  5
    Click Button           //*[@id="group_btn_save"]
    Click Element           //*[@id="id_btn_save_ok"]
    Page Should Contain    UMA,${Dynamic_Group_Name}