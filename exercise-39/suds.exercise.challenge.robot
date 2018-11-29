*** Settings ***
Library  SudsLibrary
Library  Collections

*** Test Cases ***
Update Country Updates Only Expected Fields
    Add Doctor Import     http://spring.io/guides/gs-producing-web-service
    Create Soap Client	http://127.0.0.1:8080/ws/countries.wsdl
    Set Location    http://127.0.0.1:8080/ws
    ${country}=	Create Wsdl Object	patchCountryRequest
    ${body}==   Create Dictionary   name    United Kingdom  population  63705001
    ${country}=	Set Variable	${body}
    ${result}=	Call Soap Method	patchCountry   	${country}
    Should Be Equal as Numbers  ${result.population}  63705001

    ${country}=	Create Wsdl Object	getCountryRequest
    ${country}=	Set Variable	United Kingdom
    ${result}=	Call Soap Method	getCountry	${country}
    Should Be Equal  "${result.currency}"  "GBP"
    Should Be Equal  "${result.capital}"  "London"
    Should Be Equal as Numbers  ${result.population}  63705001

*** Keywords ***
