*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
RegTest
        ${spead}=   get selenium speed
        log to console      ${spead}
        open browser    https://demowebshop.tricentis.com/register  chrome
        maximize browser window
        #sleep    5
        #set selenium speed    3 seconds
        set selenium speed    2 seconds
        select radio button    Gender   M
        input text    name:FirstName    David
        input text    name:LastName     Jhon
        input text    name:Email    anhc@gmail.com
        input text    name:Password    davidjhon
        input text    name:ConfirmPassword    davidjhon
        ${spead}=   get selenium speed
        log to console      ${spead}


