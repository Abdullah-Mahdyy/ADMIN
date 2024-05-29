*** Settings ***
Library     SeleniumLibrary



*** Variables ***




*** Test cases ***

Check_Retired_User Test Case
    [tags]              FooTag
    [Documentation]     Created by John Doe
    Do An Action        Argument
    Do Another Action   ${robotVar}
