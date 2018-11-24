from robot.api import logger

def add(a, b):
    solution = float(a) + float(b)
    logger.console('%s + %s = %s' % (a, b, solution))
    return solution


def subtract(a, b):
    return float(a) - float(b)


def multiply(a, b):
    return float(a) * float(b)
