# https://beginnersbook.com/2018/01/python-program-check-leap-year-or-not/


def is_leap_year(year):

    year = int(year);
    # Leap Year Check
    if year % 4 == 0 and year % 100 != 0:
        return True;
    elif year % 100 == 0:
        print(year, "is not a Leap Year")
        return False;
    elif year % 400 ==0:
        return True;
    else:
        return False;
