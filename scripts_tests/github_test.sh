#!/bin/bash

gh_latest_asset () {
  local repo="$1"
  local ext="$2"
  local arch="$3"
  local branch="$4"
  local github_page="https://api.github.com/repos/$repo/releases"

  curl -s "$github_page" \
  | jq -r \
      --arg ext "$ext" \
      --arg arch "$arch" \
      --arg branch "$branch" '
      first(
        .[]
        | select(.draft == false)
        | .assets[]
        | select(
            (.browser_download_url | endswith($ext))
            and ($arch   == "" or (.browser_download_url | contains($arch)))
            and ($branch == "" or (.browser_download_url | contains($branch)))
          )
        | .browser_download_url
      )
    '
}


#reference: repo="$1" #ext="$2" #arch="$3" #branch="$4" 

# specific deb file test
function software_strawberry() {
  local repo="strawberrymusicplayer/strawberry"
  local ext=".deb"
  local arch="amd64"
  local branch="noble"

  gh_latest_asset "$repo" "$ext" "$arch" "$branch"

  

}

# general deb file test 
function software_debget() {
  local repo="wimpysworld/deb-get"
  
  local ext=".deb"
  local arch=""
  local branch="all"

  gh_latest_asset "$repo" "$ext" "$arch" "$branch"

  

}


# Apk Test
function software_smarttube(){
  repo="yuliskov/SmartTube"
  ext=".apk"
  arch="universal"
  branch=""

  gh_latest_asset "$repo" "$ext" "$arch" "$branch"

}

# AppImage test 
function software_freetube(){
  repo="FreeTubeApp/FreeTube"
  ext=".AppImage"
  arch="amd64"
  branch=""

  gh_latest_asset "$repo" "$ext" "$arch" "$branch"

}

function get_software_info(){
  software_strawberry
  software_debget
  software_smarttube
  software_freetube

}

clear
get_software_info