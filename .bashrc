# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/uscms_data/d3/aaportel/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/uscms_data/d3/aaportel/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/uscms_data/d3/aaportel/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/uscms_data/d3/aaportel/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/uscms_data/d3/aaportel/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/uscms_data/d3/aaportel/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

mamba activate analysis-env

voms-proxy-init --voms cms --valid 24:00

alias jup="jupyter lab --no-browser --port=6969 &"
alias killjup="kill $(pgrep jupyter)"
