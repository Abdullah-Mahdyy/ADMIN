 robot  -d   Results   -i   NoFilter   Tests
##################### Command ############################
*** Settings ***
Library     SeleniumLibrary
Library    Process
Library     String
Resource    ../../Resources/Common.robot
Resource    ../../Resources/Keyword_NoFilter.robot
Suite Setup    Run Keywords   Open_Chrome  Login_Successfully
Test Teardown   Close_Chrome

*** Variables ***
#${Users_Mangment_Button}         //*[@id="1"]
#${Users_btn_menu}                //*[@id="users_btn_menu"]
#${UnCheck_btn_Unretired}         //*[@id="users_btn_Unretired"]
#${Recheck_btn_Unretired}         //*[@id="users_btn_Unretired"]/label/div
#${UnCheck_btn_Retired}           //*[@id="users_btn_Retired"]/label
#${Recheck_btn_Retired}           //*[@id="users_btn_Retired"]/label


*** Test cases ***
Check Functionality of No Filter
    [tags]         NoFilter
    Click on the User Managment Button
    Click on the User Menu Button
    Check Retired Checkbox Is Present
    Check the State and Uncheck it If the Checkbox is Checked
    Check Unretired Checkbox Is Present
    Check the State and Check it If the Checkbox is Unchecked
    Check If the Button Retuired is Checked
##Check Retired Checkbox Is Present
#    Element Should Be Visible        ${UnCheck_btn_Retired}


##Get the initial state of the checkbox
#   ${is_checked1}=    Get Element Attribute    ${UnCheck_btn_Retired}     checked
#    Run Keyword If    ${is_checked1} == None    Log    "Checkbox is initially checked"    ELSE    Fail     "Checkbox is initially unchecked"

##If initially checked, uncheck it and verify
#   Run Keyword If    ${is_checked1} == None    Click Element    ${UnCheck_btn_Retired}
#   Click Element    ${Users_btn_menu}
#   ${is_checked1}=    Get Element Attribute    ${Recheck_btn_Retired}    checked
#   Run Keyword If    ${is_checked1} == None    Log    "Checkbox is now unchecked"          ELSE    Fail    "Checkbox should be unchecked"
#    Sleep    1s



##unretired

##Check Retired Checkbox Is Present
#    Element Should Be Visible        ${UnCheck_btn_Unretired}
##Get the initial state of the checkbox
#   ${is_checked}=    Get Element Attribute    ${UnCheck_btn_Unretired}     checked
#    Run Keyword If    ${is_checked} == None    Log    "Checkbox is initially checked"    ELSE    Log  "Checkbox is initially unchecked"

##If initially checked, uncheck it and verify
#   Run Keyword If    ${is_checked} == None    Click Element    ${UnCheck_btn_Unretired}
#   Sleep    3s
#   Click Element    ${Users_btn_menu}
#   ${is_checked}=    Get Element Attribute    ${Recheck_btn_Unretired}    checked
#   Run Keyword If    ${is_checked} == None    Log    "Checkbox is now unchecked"    ELSE    Fail    "Checkbox should be unchecked"

#
#    IF    ${is_checked} == ${is_checked1}
#    Page Should Contain Element    //*[@id="users_p_noResult"]
#
#    ELSE
#    Log To Console    "Theres a Bug "
#
#    END







#     Close Browser
