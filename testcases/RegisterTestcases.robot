*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/RegisterKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome


*** Test Cases ***
As a user, I want to register future skill account with valid credential
    When user will register to future skill platform with ${email} ${name} ${surname} ${phone} ${newPassword} and ${confirmPassword}
    Then future skill register page will be display message as "ระบบได้ส่งรหัส OTP"