# Conda/Mamba initialization for Fish
# Source conda's own Fish integration from miniforge
if test -f $HOME/miniforge3/etc/fish/conf.d/conda.fish
    source $HOME/miniforge3/etc/fish/conf.d/conda.fish
end

# Disable conda's own prompt modification (Starship handles it)
set -gx CONDA_CHANGEPS1 false
