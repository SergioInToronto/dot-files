override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Sergios_Theme"

  # 1. put this file into `~/.git-prompt-colors.sh`
  # 2. Add to bashrc:
  #     GIT_PROMPT_ONLY_IN_REPO=1
  #     GIT_PROMPT_THEME=Custom
  #     source "/home/sergio/dev/bash-git-prompt/gitprompt.sh"

  function prompt_callback {
    local PS1="$(gp_truncate_pwd)"
    gp_set_window_title "$PS1"
  }

  CWD="\w";
  Username="\u";

  GIT_PROMPT_PREFIX="["
  GIT_PROMPT_SUFFIX="]"
  GIT_PROMPT_SEPARATOR=""
  GIT_PROMPT_STAGED=" ${Green}●${ResetColor}"
  GIT_PROMPT_CONFLICTS=" ${Red}✖${ResetColor}"
  GIT_PROMPT_CHANGED=" ${Blue}✚${ResetColor}"
  GIT_PROMPT_UNTRACKED=" ${Cyan}…${ResetColor}"
  GIT_PROMPT_STASHED=" ${BoldBlue}⚑${ResetColor}"
  GIT_PROMPT_CLEAN=""

  GIT_PROMPT_COMMAND_OK="${Green}✔"
  GIT_PROMPT_COMMAND_FAIL="${Red}✘"

#   GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${DimWhite}${Username}${ResetColor} ${Cyan}${CWD}${ResetColor}"
  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${Blue}${CWD}${ResetColor}"
  GIT_PROMPT_END_USER="${ResetColor} $ "
  GIT_PROMPT_END_ROOT="${BoldRed} # "

  # Tips:
  # Run in shell: `git_prompt_color_samples`
}

reload_git_prompt_colors "Sergios_Theme"

