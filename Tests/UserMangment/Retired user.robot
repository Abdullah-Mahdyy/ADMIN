*** Settings ***
Library     SeleniumLibrary
Library    Process


*** Variables ***




*** Test cases ***

User Test Case
    [tags]         Login
    Set Selenium Implicit Wait    5
    Open Browser        https://dgdadevnew.eastus.cloudapp.azure.com/DGDAAdminFront/#/login      Chrome
    Maximize Browser Window
    Input Text         //*[@id="login_input_username"]    admin
    Input Password    //*[@id="login_input_password"]    123456
    Click Button     //*[@id="login_btn_login"]
#check Functionality of Retired Checkbox
    Click Element    //*[@id="1"]
    Sleep    5
    Click Element    //*[@id="users_btn_menu"]
    Click Element    //*[@id="users_btn_Unretired"]
    #//*[@id="users_btn_Unretired"]/label/div
    ${CheckBoxValue}    Get Value    //*[@id="users_btn_Unretired"]
    IF    $CheckBoxValue 
        Log            "None"

        Click Element    //*[@id="users_btn_menu"]
        Unselect Checkbox    //*[@id="users_btn_Unretired"]
        Get Value    ${CheckBoxValue}
        Sleep    5
    END

    


       Close Browser
