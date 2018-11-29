*** Settings ***
Library  SudsLibrary
Library  Collections

*** Test Cases ***
United Kingdom Payload Is Valid
    Add Doctor Import     http://spring.io/guides/gs-producing-web-service
    Create Soap Client	http://localhost:8080/ws/countries.wsdl
    Set Location    http://localhost:8080/ws
    ${country}=	Create Wsdl Object	getCountryRequest
    ${country}=	Set Variable	United Kingdom
    ${result}=	Call Soap Method	getCountry	${country}
    Should Be Equal  "${result.currency}"  "GBP"
    Should Be Equal  "${result.capital}"  "London"
    Should Be Equal as Numbers  ${result.population}  63705000


*** Keywords ***
