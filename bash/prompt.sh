function exitstatus() {
    EXITSTATUS="$?"
    BOLD="\[\033[1m\]"
    RED="\[\033[1;31m\]"
    GREEN="\[\e[32;1m\]"
    BLUE="\[\e[34;1m\]"
    OFF="\[\033[m\]"

    PROMPT="${BLUE}\W${OFF}"

    if [ "${EXITSTATUS}" -eq 0 ]
    then
       PS1="${PROMPT} \$ "
    else
       PS1="${PROMPT} ${BOLD}${RED}ERROR: ${EXITSTATUS}${OFF} \$ "
    fi

    PS2="${BOLD}>${OFF} "
}

PROMPT_COMMAND=exitstatus
