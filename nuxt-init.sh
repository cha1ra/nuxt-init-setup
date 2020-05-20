#!/bin/bash

#------------------------------
# CONST
#------------------------------
COLOR_RED="\033[0;31m"
COLOR_GREEN="\033[0;32m"
COLOR_MAGENTA="\033[0;35m"
COLOR_OFF="\033[0;39m"

# スクリプトがお置いてある位置の絶対パス
SCRIPT_DIR=$(cd $(dirname $0); pwd)

#------------------------------
# Function
#------------------------------

do_script() {
   echo $1
   $1
}

error_msg() {
    echo ""
    echo -e "\033[0;31m------------ERROR!------------\033[0;39m"
    echo -e "\033[0;31m$1\033[0;39m"
    echo -e "\033[0;31m------------------------------\033[0;39m"
    exit 1
}


#------------------------------
# Process
#------------------------------


echo -e "
${COLOR_GREEN}
++++++++++++++++++++++++++++++
   Nuxt.js Init Script v1.0
      Update: 2020.05.21
++++++++++++++++++++++++++++++
${COLOR_OFF}
"

path_name="layouts/default.vue"
do_script "cp ${SCRIPT_DIR}/src/${path_name} ./${path_name}"

path_name="components"
do_script "rm -rf ./${path_name}"
do_script "mkdir ./${path_name}"

path_name="static"
do_script "rm -rf ./${path_name}"
do_script "mkdir ./${path_name}"

path_name="pages"
do_script "rm -rf ./${path_name}"
do_script "mkdir ./${path_name}"

path_name="pages/index.vue"
do_script "cp ${SCRIPT_DIR}/src/${path_name} ./${path_name}"