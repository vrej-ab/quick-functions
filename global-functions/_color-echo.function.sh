#!/bin/bash
:<<'ANSIcolorCodes'
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37
ANSIcolorCodes

# # # Just to have unify messages # # #
type echo_blue  echo_green  echo_red  echo_red_s &> /dev/null || {
  echo_blue(){
   echo -en "\033[0;34m$*" ;echo -e "\033[0;0m"
  }
  echo_green(){
   echo -en "\033[0;32m$*" ;echo -e "\033[0;0m"
  }
  echo_red(){
   echo -en "\033[0;31m$*" ;echo -e "\033[0;0m"
  }
  echo_red_s(){
   echo -en "\033[9;31m$*" ;echo -e "\033[0;0m"
  }
}
