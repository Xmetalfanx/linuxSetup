#!/bin/bash

## First try at signing .. this i will leave here but may be 100% wrong, code-wise
#git filter-branch --commit-filter 'git commit-tree -S "$@";' -- --all

git filter-branch --commit-filter 'git commit-tree -S "$@";' HEAD
