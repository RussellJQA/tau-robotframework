from robot.api.deco import keyword


@keyword('Add ${a} to ${b}')
def add(a, b):
    return float(a) + float(b)


def subtract(a, b):
    return float(a) - float(b)


def multiply(a, b):
    return float(a) * float(b)
