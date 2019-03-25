*** Settings ***
Library  SudsLibrary
Library  Collections

*** Test Cases ***
United States Payload Is Valid
    Add Doctor Import     http://spring.io/guides/gs-producing-web-service
    Create Soap Client	http://127.0.0.1:8080/ws/countries.wsdl
    Set Location    http://127.0.0.1:8080/ws
    ${country}=	Create Wsdl Object	getCountryRequest
    ${country}=	Set Variable	United States
    ${result}=	Call Soap Method	getCountry	${country}
    Should Be Equal  "${result.currency}"  "USD"
    Should Be Equal  "${result.capital}"  "Washington, D.C."
    Should Be Equal as Numbers  ${result.population}  325700000

United Kingdom Payload Is Valid
    Add Doctor Import     http://spring.io/guides/gs-producing-web-service
    Create Soap Client	http://127.0.0.1:8080/ws/countries.wsdl
    Set Location    http://127.0.0.1:8080/ws
    ${country}=	Create Wsdl Object	getCountryRequest
    ${country}=	Set Variable	United Kingdom
    ${result}=	Call Soap Method	getCountry	${country}
    Should Be Equal  "${result.currency}"  "GBP"
    Should Be Equal  "${result.capital}"  "London"

*** Keywords ***
