#!/bin/bash
#
# Based on 'bobby' theme with the addition of virtualenv_prompt
#

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"
SCM_THEME_PROMPT_PREFIX=" ${yellow}|${reset_color}"
SCM_THEME_PROMPT_SUFFIX="${yellow}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"
RBENV_THEME_PROMPT_PREFIX="|"
RBENV_THEME_PROMPT_SUFFIX="|"
NVM_THEME_PROMPT_PREFIX="|"
NVM_THEME_PROMPT_SUFFIX="|"
VIRTUALENV_THEME_PROMPT_PREFIX='|'
VIRTUALENV_THEME_PROMPT_SUFFIX='|'

command_status() {
  rc="$?"
  if [[ "$rc" != "0" ]]; then
    rc="${red}[${rc}] "
    echo -e "$rc"
  fi
}

nvm_prompt() {
  if type -p nvm &> /dev/null; then
    nvm=$(nvm version | tr -d ' ') || return
    echo -e "$NVM_THEME_PROMPT_PREFIX$nvm$NVM_THEME_PROMPT_SUFFIX"
  fi
}

function prompt_command() {
  rc=$(command_status)
  PS1="${blue}$(nvm_prompt)${green}$(virtualenv_prompt)${red}$(ruby_version_prompt) ${white}(${yellow}\t${white}) ${white}[${blue}\u${white}@${blue}\h${white}] in ${green}\w${white}\n${yellow}$(scm_char)$(scm_prompt_info) ${yellow}${rc}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
