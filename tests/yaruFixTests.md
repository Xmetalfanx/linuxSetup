# Yaru related code fixing, tests

## Intial tests
| --- | Task                                            | Leap 15.6 vm test                       |
| --- | ----------------------------------------------- | --------------------------------------- |
| 1   | Yaru "default" repo install (not preinstalled)  | Pass                                    |
| 2   | Yaru "default" repo install (already installed) | Pass - output is messy/needs tidying    |
| 3   | YaruColor (no Yaru theming installed)           | Pass - find command output still shows  |
| 4   | YaruColor (Yaru theming of some kind installed) | Pass - yet like #2, the output is messy |

## Second Tests

| --- | Task                                            | Leap 15.6 vm test   |
| --- | ----------------------------------------------- | ------------------- |
| 1   | Yaru "default" repo install (not preinstalled)  | Pass - Clean output |
| 2   | Yaru "default" repo install (already installed) | Pass                |
| 3   | YaruColor (no Yaru theming installed)           |                     |
| 4   | YaruColor (Yaru theming of some kind installed) | Pass                |

- \1  it installs anyway? (default repo packages installed during test)  Update: i think the redirect of &> to /dev/null MAY have caused this entire problem
- \2  download happened (? part of \1? )

## Third Test - to make SURE it works on a fresh system even if test 2 stuff all passes

| --- | Task                                            | Leap 15.6 vm test                           |
| --- | ----------------------------------------------- | ------------------------------------------- |
| 1   | Yaru "default" repo install (not preinstalled)  | Pass                                        |
| 2   | Yaru "default" repo install (already installed) | Pass (output is good, doesn't do anything ) |
| 3   | YaruColor (no Yaru theming installed)           |                                             |
| 4   | YaruColor (Yaru theming of some kind installed) | Pass (output is good, doesn't do anything ) |

## Fourth Test - i ran into issues with test three (installing even if theme was already there?)

| --- | Task                                            | Leap 15.6 vm test |
| --- | ----------------------------------------------- | ----------------- |
| 1   | Yaru "default" repo install (not preinstalled)  |                   |
| 2   | Yaru "default" repo install (already installed) |                   |
| 3   | YaruColor (no Yaru theming installed)           |   Pass                |
| 4   | YaruColor (Yaru theming of some kind installed) |                   |
