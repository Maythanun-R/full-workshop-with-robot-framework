*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
user will register to future skill platform with ${email} ${name} ${surname} ${phone} ${newPassword} and ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text    name=email    ${email}
    CommonKeywords.Wait until element is ready then input text    name=firstName    ${name}
    CommonKeywords.Wait until element is ready then input text    name=lastName    ${surname}
    CommonKeywords.Wait until element is ready then input text    name=phoneNumber    ${phone}
    CommonKeywords.Wait until element is ready then input text    name=newPassword    ${newPassword}
    CommonKeywords.Wait until element is ready then input text    name=confirmPassword    ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element    xpath=//input[@type='checkbox']
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@type='submit' and text()='สมัครสมาชิก']

future skill register page will be display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}