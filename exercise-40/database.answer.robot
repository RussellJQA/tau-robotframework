*** Settings ***
Library  DatabaseLibrary
Library  Collections

*** Test Cases ***
United States Entry Is Valid
    Connect To Database Using Custom Params    sqlite3    database="./countries.db", isolation_level=None


*** Keywords ***
