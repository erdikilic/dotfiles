# Bioinformatics workflow abbreviations
abbr -a nf 'nextflow'
abbr -a sm 'snakemake'
abbr -a dk 'docker'
abbr -a snm 'snakemake --cores all --use-conda'
abbr -a nfrun 'nextflow run -latest'

# NVM via bass (bash compatibility)
function nvm
    bass source $HOME/.nvm/nvm.sh -- no-use ';' nvm $argv
end
