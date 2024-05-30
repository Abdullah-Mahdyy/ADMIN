# robot  -d   Results   -i   User_Management   Tests

*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    Resources/Common.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome
*** Variables ***
${Email}                    //*[@id="users_input_email"]
${Phone_Number}             //*[@id="users_input_phoneNumber"]
*** Test Cases ***
Check Functionality of Edit User
    [tags]                      User_Management_Edit
    Set Selenium Implicit Wait  5
    Click Element               //*[@id="1"]/i
    Input Text                  //*[@id="users_input_filterUsers"]    weaam
    Click Element               //*[@id="users_ddl_usersList_0"]/button
    Page Should Contain         Requester
    Click Element               //*[@id="users_btn_edit"]
    Set Selenium Implicit Wait  5
    ${Dynamic_Email}           Generate Random String      15       [LETTERS]
    ${Dynamic_Phone_Number}     Generate Random String      8       0123456789
    ${Random_Phone_Number}  Set Variable       ${Dynamic_Phone_Number}
    Input Text       ${Email}                  ${Dynamic_Email}@gmail.com
    Input Text       ${Phone_Number}           010${Random_Phone_Number}
    Click Button                //*[@id="users_btn_save"]
    Page Should Contain         Are you sure you want to save changes ?
    Click Element               //*[@id="id_btn_msg_ok"]
    Sleep    3
Check Functionality of Reset
    [tags]                      User_Management_Reset
    Set Selenium Implicit Wait  5
    Click Element               //*[@id="1"]/i
    Input Text                  //*[@id="users_input_filterUsers"]    weaam
    Click Element               //*[@id="users_ddl_usersList_0"]/button
    Page Should Contain         Requester
    Click Element               //*[@id="users_btn_edit"]
    Set Selenium Implicit Wait  5
    ${Dynamic_Email}           Generate Random String      15       [LETTERS]
    ${Dynamic_Phone_Number}     Generate Random String      8       0123456789
    ${Random_Phone_Number}  Set Variable       ${Dynamic_Phone_Number}
    Input Text       ${Email}                  ${Dynamic_Email}@gmail.com
    Input Text       ${Phone_Number}           010${Random_Phone_Number}
    Sleep    3
    Click Button                //*[@id="users_btn_reset"]
    Page Should Contain         Are you sure you want to reset user data ?
    Click Element               //*[@id="id_btn_msg_ok"]
    Sleep    3
Check Functionality of Cancel
    [tags]                      User_Management_Cancel
    Set Selenium Implicit Wait  5
    Click Element               //*[@id="1"]/i
    Input Text                  //*[@id="users_input_filterUsers"]    weaam
    Click Element               //*[@id="users_ddl_usersList_0"]/button
    Page Should Contain         Requester
    Click Element               //*[@id="users_btn_edit"]
    Set Selenium Implicit Wait  5
    ${Dynamic_Email}           Generate Random String      15       [LETTERS]
    ${Dynamic_Phone_Number}     Generate Random String      8       0123456789
    ${Random_Phone_Number}  Set Variable       ${Dynamic_Phone_Number}
    Input Text       ${Email}                  ${Dynamic_Email}@gmail.com
    Input Text       ${Phone_Number}           010${Random_Phone_Number}
    Sleep    3
    Click Button                //*[@id="users_btn_cancel"]
    Page Should Contain         Discard changes?
    Click Element               //*[@id="id_btn_msg_ok"]
    Sleep    3
Check Functionality of Edit User with Leaving Mandatory Fields Empty
    [tags]                      User_Management_Empty
    Set Selenium Implicit Wait  5
    Click Element               //*[@id="1"]/i
    Input Text                  //*[@id="users_input_filterUsers"]    weaam
    Click Element               //*[@id="users_ddl_usersList_0"]/button
    Page Should Contain         Requester
    Click Element               //*[@id="users_btn_edit"]
    Set Selenium Implicit Wait  5
    Input Text      ${Email}            ${EMPTY}
    Input Text      ${Phone_Number}     ${EMPTY}
    Sleep    3
    Click Button                //*[@id="users_grid_usersGrid"]/kendo-grid-toolbar/button
    Sleep    3
    Click Button                //*[@id="users_btn_save"]
    Page Should Contain         Are you sure you want to save changes ?
    Click Element               //*[@id="id_btn_msg_ok"]
    Page Should Contain         Please fill all required fields
    Sleep    3
Check Functionality of Delete User
    [tags]                      User_Management_Delete
    Set Selenium Implicit Wait  5
    Click Element               //*[@id="1"]/i
    Input Text                  //*[@id="users_input_filterUsers"]    weaam
    Click Element               //*[@id="users_ddl_usersList_0"]/button
    Page Should Contain         Requester
    Click Element               //*[@id="users_btn_delete"]
    Sleep    3
    Page Should Contain         Are you sure you want delete this user ?
    Click Element               //*[@id="id_btn_msg_cancel"]
    Sleep    3
