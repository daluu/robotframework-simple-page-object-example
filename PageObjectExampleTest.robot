*** Setting ***
Test Setup        GoogleSearchPage.Open    ${URL}
Test Teardown     GoogleSearchPage.Close
Resource          GoogleSearchPage.html

*** Variable ***    Value
${BROWSER_OPENED}    ${false}
${BROWSER}        firefox
${URL}            http://www.google.com
${SEARCH_TERM}    selenium

*** Test Case ***
When The User Searches For Selenium The Results Page Title Should Contain Selenium
    GoogleSearchPage.Search For    ${SEARCH_TERM}
    ${result} =    GoogleSearchPage.Get Title
    Should Contain    ${result}    ${SEARCH_TERM}
