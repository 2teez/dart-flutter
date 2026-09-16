#!/usr/bin/env python3


class Calculator:
    def __init__(self, x: int, y: int):
        self.__x = x
        self.__y = y

    def sum(self) -> int:
        return self.__x + self.__y


def adder(a: Calculator) -> int:
    return a.sum()


def adder_with_lambda(*, a: int, b: int) -> int:
    return (lambda x, y: x + y)(a, b)


def main() -> None:
    calculator = Calculator(2, 6)
    print(adder(calculator))
    print(adder_with_lambda(a=2, b=6))


if __name__ == "__main__":
    main()
