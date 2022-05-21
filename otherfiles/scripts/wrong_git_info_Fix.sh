#!/bin/bash

git filter-branch -f --env-filter '
    GIT_AUTHOR_NAME="Xmetalfanx"
    GIT_AUTHOR_EMAIL="Xmetalfanx@yahoo.com"
    GIT_COMMITTER_NAME="Xmetalfanx"
    GIT_COMMITTER_EMAIL="Xmetalfanx@yahoo.com"
  ' HEAD
