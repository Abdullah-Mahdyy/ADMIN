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
${Delete_Button}            //*[@id="users_btn_delete"]
${No_Button}               //*[@id="id_btn_msg_ok"]

*** Keywords ***
Click on the User Managment Button
    Set Selenium Implicit Wait  5
    Click Element               ${User_Managment_Button}
Insert Data in the Search Text Box
    Input Text                  ${Search_TextBox}     weaam
Click on the User
    Click Element               ${Select_User}
Click on the Delete Button
    Click Element               ${Delete_Button}
    Sleep    3
Click on No at the Confirmation Message
    Click Element               //*[@id="id_btn_msg_cancel"]
    Sleep    3