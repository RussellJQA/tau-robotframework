*** Settings ***
Library  DatabaseLibrary
Library  Collections

*** Test Cases ***
United States Entry Is Valid
    Connect To Database Using Custom Params    sqlite3    database="./countries.db", isolation_level=None
    Check If Exists In Database    SELECT * FROM countries WHERE name = 'United States';
    ${output} =   Query    SELECT population,capital FROM countries WHERE name = 'United States';
    Should Be Equal As Strings    ${output}  [(325700000, u'Washington, D.C.')]


*** Keywords ***
