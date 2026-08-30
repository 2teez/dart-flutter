#!/usr/bin/env python3 -OB
from typing import override


class User:
    def __init__(self, id: int, name: str) -> None:
        self.__id = id
        self.__name = name

    @override
    def __str__(self) -> str:
        return self.__repr__()

    @override
    def __repr__(self) -> str:
        return f"User(id: {self.__id}, name: {self.__name})"


def main() -> None:
    user = User(1, "John")
    print(user)


if __name__ == "__main__":
    main()
