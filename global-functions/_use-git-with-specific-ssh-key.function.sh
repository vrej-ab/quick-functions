#!/bin/bash

### This function takes your desired ssh-key path, and run the `git` with the provided argyuments.
_ssh_git(){
  read -rp "Please provide the ssh-key full-path: " _git_key_path
  if [ -f "${_git_key_path/\~/$HOME}" ] ;then
    GIT_SSH_COMMAND="ssh -i ${_git_key_path/\~/$HOME} -o IdentitiesOnly=yes" git "${*}"
  else
    echo -e "\n[ERROR]: The ssh-key file ${_git_key_path/\~/$HOME} is not avaiable/accessible\n"
  fi
}

