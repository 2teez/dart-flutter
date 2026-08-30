#!/usr/bin/env python -OB
#
"""
doctest the enum classes of weather
>>> from ch05.controls import Weather
>>> Weather.SUNNY
It's sunny!

>>> Weather.CLOUDY
It's cloudy!

>>> from ch05.controls import AudioState
>>> AudioState.PLAYING
playing
"""

from enum import Enum
from typing import override


class Weather(Enum):
    SUNNY = "sunny"
    CLOUDY = "cloudy"
    RAINY = "rainy"
    SNOWY = "snowy"

    @override
    def __repr__(self) -> str:
        match self:
            case Weather.SUNNY:
                return "It's sunny!"
            case Weather.CLOUDY:
                return "It's cloudy!"
            case Weather.RAINY:
                return "It's rainy!"
            case Weather.SNOWY:
                return "It's snowy!"

    @override
    def __str__(self) -> str:
        return self.__repr__()


class AudioState(Enum):
    PLAYING = "playing"
    PAUSED = "paused"
    STOPPED = "stopped"

    @override
    def __repr__(self) -> str:
        return self.value

    @override
    def __str__(self) -> str:
        return self.__repr__()


def main() -> None:
    weather = Weather.SUNNY
    print(weather)


if __name__ == "__main__":
    from doctest import testmod

    testmod(verbose=True)
    main()
