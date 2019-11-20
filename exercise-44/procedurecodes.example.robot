*** Settings ***
Library  OperatingSystem
Library  String



*** Test Cases ***
Our Test Case
  ${contents}=  Get File  procedureCodes.txt
  @{lines}=   Split to lines  ${contents}



  :FOR    ${index}    IN    @{lines}
    \   Log To Console    Here is a line from the file: ${index}

    # \ ${IDs} = go_to_nth_row_nth_column
    # \ ${respold}= Get Request
    # \ Should Be Equal As Strings
    # \ ${respnew}=
    # \ Should Be Equal As Strings
    # \ Should be equal
    # \ log many ${respold.json()}
    # \ log many ${respnew.json()}
