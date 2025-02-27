*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to future skill platform with 
    [Arguments]    ${number}
    ${string_number}  Set Variable    ${number}
    ${string_number}    Convert To String    ${number}
    CommonKeywords.Wait until element is ready then input text        xpath=//input[@placeholder="กรอกเลขสลาก ใบที่ 1"]  ${string_number}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@title="ตรวจสลากฯ ของคุณ"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains elemment then veryify text        ${expected_message}

