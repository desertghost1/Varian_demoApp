*** Settings ***
Documentation    Keyword for project
Library          SeleniumLibrary
Library          FakerLibrary
Resource         variables.robot


*** Keywords ***
Navigate to Login page
    open browser                              ${URL}                      ${BROWSER}

Maximize window
    maximize browser window

Assert that page is correctly loaded
    wait until element is enabled             ${LANGUAGE_SELECTOR}        10s
    wait until element is visible             ${NOONA_PAGE_LOGO}          10s
    wait until element is visible             ${EMAIL_FIELD}              10s
    wait until element is enabled             ${EMAIL_FIELD}              10s
    wait until element is visible             ${PASSWORD_FIELD}           10s
    wait until element is enabled             ${PASSWORD_FIELD}           10s
    wait until element is visible             ${LOGINBUTTON}              10s
    wait until element is enabled             ${PROBLEMS_LOGGIN_IN}       10s
    wait until element is enabled             ${DONT_HAVE_AN_ACCT}        10s
    wait until element is enabled             ${PRIVACY_STATEMENT}        10s
    wait until element is enabled             ${ABOUT}                    10s
    page should contain                                                   Language
    page should contain                                                   Welcome to Noona
    page should contain                                                   Please enter your email address and password.
    page should contain                                                   2022 Varian Medical Systems, Inc.



# keywords for invalid login credential test below

Enter an invalid login email address
    ${email}=             FakerLibrary.email
    log                   ${email}
    set Test variable     ${email}

    wait until element is enabled           ${EMAIL_FIELD}                 10s
    input text                              ${EMAIL_FIELD}                 ${email}


Enter an invalid login password
    wait until element is enabled           ${PASSWORD_FIELD}               10s
    input text                              ${PASSWORD_FIELD}               Testing



CLick on Login button and assert error message
    wait until element is enabled           ${LOGINBUTTON}                  10s
    click element                           ${LOGINBUTTON}

    wait until element is enabled           ${ERROR_MESSAGE}                10s
    page should contain                     Incorrect username or password. If you have forgotten your password, please click Problems logging in -link.





