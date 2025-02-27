*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/inlotaryPageKeywords.robot
Resource        ../keywords/lotaryPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl_T}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to login success with valid credential
    When user login to future skill platform with ${numbergood}
    Then future skill should display home page and display message as "ไม่ถูกรางวัล"
    [Teardown]  

As a user, I fail to login with invalid credential
    When user login to future skill platform with ${numberout}
    Then future skill should display display validate login fail message as "เสียใจด้วย ก้มหน้าทำงานของคุณต่อไปซะ"