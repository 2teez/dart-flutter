#!/usr/bin/env python3

from collections import namedtuple

Student = namedtuple("Student", ["first_name", "last_name", "grade"])


def show_student(student: Student) -> None:
    print(student)


def main() -> None:
    student = Student(first_name="John", last_name="Doe", grade=90)
    show_student(student)


if __name__ == "__main__":
    main()
