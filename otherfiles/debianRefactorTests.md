| Task                                       | Debian 11 | Debian 12 | Devuan (chimaera) | Devuan (daedalus)  |
| ------------------------------------------ | --------- | --------- | ----------------- | ------------------ |
| Supported by my scripts                    | --------- | Pass      | ----------------- | ------------------ |
| Add Useful software (Deb menu)             | --------- | --------- | Fail              | ------------------ |
| Add Linux Firmware                         | --------- | --------- | Pass \*           | ------------------ |
| Add intel Microcode                        | --------- | --------- | \*\*              | ------------------ |
| Add archive support                        | --------- | --------- | \*\*\*            | ------------------ |
| Add Contrib and Non-free repos             | ----      | ---       | ----              | ---                |
| Add/Check for current user in Sudoers file | ----      | Pass      | ----              | ---                |

- \* but it's detecting as installed AND trying to install again anyway
- \*\* think it passed but add a pause to be sure
- \*\*\* "rar" is failing ... it says its in the non-free repos so maybe look at that code ("non-free" not being added?)

  - update: THAT IS EXACTLY the problem

- Untested here just means in Sept 2023 during the refactoring ... I may have tested this before and it worked fine. I should probably redo all of these tests though to make sure
