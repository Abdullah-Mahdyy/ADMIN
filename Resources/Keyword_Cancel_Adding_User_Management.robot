*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Common.robot

*** Variables ***
${Email}                    //*[@id="users_input_email"]
${Phone_Number}             //*[@id="users_input_phoneNumber"]
${User_Managment_Button}    //*[@id="1"]/i
${Search_TextBox}           //*[@id="users_input_filterUsers"]
${Select_User}              //*[@id="users_ddl_usersList_0"]/button
${Edit_Button}              //*[@id="users_btn_edit"]
${Cancel_Button}            //*[@id="users_btn_cancel"]
${Yes_Button}               //*[@id="id_btn_msg_ok"]

*** Keywords ***
Click on the User Managment Button
    Set Selenium Implicit Wait  5
    Click Element               ${User_Managment_Button}
Insert Data in the Search Text Box
    Input Text                  ${Search_TextBox}     weaam
Click on the User
    Click Element               ${Select_User}
Click on the Edit Button
    Click Element               ${Edit_Button}
    Set Selenium Implicit Wait  5
Insert Random Email
    ${Dynamic_Email}           Generate Random String      15       [LETTERS]
    Input Text       ${Email}                  ${Dynamic_Email}@gmail.com
Insert Random Phone Number
    ${Dynamic_Phone_Number}     Generate Random String      8       0123456789
    ${Random_Phone_Number}  Set Variable       ${Dynamic_Phone_Number}
    Input Text       ${Phone_Number}           010${Random_Phone_Number}
Click on the Cancel Button
    Click Button                ${Cancel_Button}
Click on Yes at the Confirmation Message
    Click Element               ${Yes_Button}
    Sleep    3