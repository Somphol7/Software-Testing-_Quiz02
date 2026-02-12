*** Settings ***
Library         SeleniumLibrary
Suite Setup     Open Browser    https://chiangmuan.igovapp.com/    chrome
Suite Teardown  Close Browser

*** Variables ***


*** Keywords ***
Login
    SeleniumLibrary.Wait Until Page Contains    ระบบบริการประชาชน    timeout=30    error=None
    SeleniumLibrary.Click Element    locator=//*[@id="root"]/div/nav/header/div/a[1]    modifier=False    action_chain=False
    SeleniumLibrary.Wait Until Element Is Visible    locator=//*[@id="app"]/div/div/div/div[2]/div/div[2]/a    timeout=30    error=None
    SeleniumLibrary.Click Element    locator=//*[@id="app"]/div/div/div/div[2]/div/div[2]/a    modifier=False    action_chain=False
    SeleniumLibrary.Wait Until Page Contains    เข้าสู่ระบบด้วยคิวอาร์โค้ด    timeout=30    error=None
    SeleniumLibrary.Wait Until Page Contains    ยินดีต้อนรับ    timeout=30    error=None

*** Test Cases ***
loginQRCORD
    Login


