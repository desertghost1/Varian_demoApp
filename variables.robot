*** Variables ***
#homepage url variables
${URL}                                       https://demo.patient.noonatest.com/patient/#/login
${BROWSER}                                   chrome     #firefox



#signin locators
${EMAIL_FIELD}                               xpath://input[@id='email']
${PASSWORD_FIELD}                            xpath://input[@id='pwd']
${LOGINBUTTON}                               xpath://button[@type='submit']//div[@class='ds-button__content-wrapper']
${PROBLEMS_LOGGIN_IN}                        xpath://div[contains(text(),'Problems logging in?')]
${DONT_HAVE_AN_ACCT}                         xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/login-directive[1]/div[1]/div[1]/div[2]/div[1]/div[2]/ds-button[1]/button[1]/div[1]/div[1]



#Assertion locators
${NOONA_PAGE_LOGO}                           xpath://div[@class='login-logo login-logo--noona ng-scope']
${ERROR_MESSAGE}                             xpath://p[@class='ng-binding ng-scope']
${LANGUAGE_SELECTOR}                         xpath://div[@role='combobox']
${PRIVACY_STATEMENT}                         xpath://div[contains(text(),'Privacy statement')]
${ABOUT}                                     xpath://div[contains(text(),'About')]



