#!/bin/sh

git filter-branch --commit-filter 'git commit-tree -S "$@";' -- --all