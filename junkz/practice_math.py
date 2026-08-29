#!/usr/bin/env python -OB
import math


def main() -> None:
    print(math.cos(135 * math.pi / 180))
    print(math.sqrt(2))
    new_value = 1 / math.sqrt(2)
    print(new_value)
    print(new_value == math.sin(45 * math.pi / 180))


if __name__ == "__main__":
    main()
