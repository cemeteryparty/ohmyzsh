#function virtualenv_prompt_info(){
#  [[ -n ${VIRTUAL_ENV} ]] || return
#  echo "${ZSH_THEME_VIRTUALENV_PREFIX=[}${VIRTUAL_ENV:t:gs/%/%%}${ZSH_THEME_VIRTUALENV_SUFFIX=]}"
#}
function virtualenv_prompt_info {
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        echo "${ZSH_THEME_VIRTUALENV_PREFIX=[}${CONDA_DEFAULT_ENV}${ZSH_THEME_VIRTUALENV_SUFFIX=]}"
    fi
}
# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

