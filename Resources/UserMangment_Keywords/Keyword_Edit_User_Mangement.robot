*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/Common.robot

*** Variables ***
${Email}                    //*[@id="users_input_email"]
${Phone_Number}             //*[@id="users_input_phoneNumber"]
${User_Managment_Button}    //*[@id="1"]/i
${Search_TextBox}           //*[@id="users_input_filterUsers"]
${Select_User}              //*[@id="users_ddl_usersList_0"]/button
${Edit_Button}              //*[@id="users_btn_edit"]
${Save_Button}              //*[@id="users_btn_save"]
${Yes_Button}               //*[@id="id_btn_msg_ok"]

*** Keywords ***
Click on the User Managment Button
    Set Selenium Implicit Wait  5
    Click Element               ${User_Managment_Button}
Insert Data in the Search Text Box
    Input Text                  ${Search_TextBox}     weaam
    Sleep    2
Click on the User
    Click Element               ${Select_User}
    Sleep    5
Click on the Edit Button
    Click Element               ${Edit_Button}
    Sleep  5
Insert Random Email
    ${Dynamic_Email}           Generate Random String      15       [LETTERS]
    Input Text       ${Email}                  ${Dynamic_Email}@gmail.com
    Sleep    2
Insert Random Phone Number
    ${Dynamic_Phone_Number}     Generate Random String      8       0123456789
    ${Random_Phone_Number}  Set Variable       ${Dynamic_Phone_Number}
    Input Text       ${Phone_Number}           010${Random_Phone_Number}
    Sleep    2
Click on Save
    Click Button                ${Save_Button}
    Sleep    2
Click on Yes at the Confirmation Message
    Click Element               ${Yes_Button}
    Sleep    2
##############################################################################################
Leave the Email Empty
    Input Text      ${Email}            ${EMPTY}
    Sleep    2
Leave the Phone Number Empty
    Input Text      ${Phone_Number}     ${EMPTY}
    Sleep    3
Click on the Add New Icon
    Click Button                //*[@id="users_grid_usersGrid"]/kendo-grid-toolbar/button
    Sleep    3
Close the Browser
    Close Browser