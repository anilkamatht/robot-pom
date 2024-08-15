*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://formy-project.herokuapp.com/form

*** Test Cases ***
LoginTest

        open browser    ${url}  ${browser}
        maximize browser window
        title should be     Formy
        ${"email_txt"}  set variable    id:first-name
        element should be visible   ${"email_txt"}
        element should be enabled   ${"email_txt"}
        #element should not be visible   ${"email_txt"}
        input text  ${"email_txt"}  Anil
        sleep   5
        clear element text  ${"email_txt"}
        sleep   3
        close browser




*** Keywords ***
