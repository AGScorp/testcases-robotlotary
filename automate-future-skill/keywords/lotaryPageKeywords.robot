*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***

Then future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

When user login to future skill platform with ${numbergood}
    #CommonKeywords.Wait until element is ready then click element    xpath=//button[@aria-haspopup="menu"]
    #CommonKeywords.Wait until element is ready then click element    xpath=//div[contains(text(),"ออกจากระบบ")]
    #Refresh Page   # รีเฟรชหน้า
    CommonKeywords.Wait until element is ready then input text    xpath=//input[@placeholder="กรอกเลขสลาก ใบที่ 1"]   ${numbergood} 
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@title="ตรวจสลากฯ ของคุณ"]



