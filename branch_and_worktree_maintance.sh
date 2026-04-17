#!/bin/bash

function user_prompt() {
  read -r -p "Press [Enter] to continue "
}

####################################################
# Worktree related 

function git_create_worktree(){
    git_name="${1}"
    
    echo -e "Creating worktree for $git_name"
    git worktree add ../"${git_name}" "${git_name}"
    user_prompt
}

function git_remove_worktree() {
    git_name="${1}"
    
    echo -e "Removing worktree ${git_name}"
    git worktree remove ../"${git_name}"
    user_prompt
}

# End Worktree related
####################################################

####################################################
# Git branch related 

function git_create_branch() {
    git_name="${1}"
    
    echo "Creating $git_name git branch"
    git branch "${git_name}"
    user_prompt
}

function git_delete_branch() {
    git_name="${1}"
    
    echo "Creating $git_name git branch"
    git branch -D "${git_name}"
    user_prompt
}

####################################################

function create_branch_and_worktree() {
    git_name="${1}"

    # create branch first
    git_create_branch "${git_name}" && git_create_worktree "${git_name}"  
}

function delete_branch_and_worktree() {
    git_name="${1}"

    ## REMEMBER worktree has to be removed before the branch
    git_remove_worktree "${git_name}" && git_delete_branch "${git_name}"
}

function main() {
    read -r -p "Enter Git Branch/Worktree name: " git_name

    read -r -p "Create or Delete branch and worktree? (C/D): " git_prompt

    case ${git_prompt} in 
        C|c) create_branch_and_worktree "${git_name}" ;;
        D|d) delete_branch_and_worktree "${git_name}" ;;
    esac
}

main 
