### Aliases From !["awesome" bash aliases](https://github.com/vikaskyadav/awesome-bash-alias)
  - Total disk usage on machine: `alias totalusage='df -hl --total | grep total'`
  - Top 10 processes eating memory: `alias psmem="ps auxf | sort -nr -k 4 | head -10"`
  - Top 10 processes eating cpu: `alias pscpu="ps auxf | sort -nr -k 3 | head -10"`
  - Top 10 files using the most storage space: `alias most='du -hsx * | sort -rh | head -10'`
  - Aliases added to `~./bashrc`

### Something cool from ![The Ultimate B.A. `.bashrc` file](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c)
  ```
   # Color for manpages in less makes manpages a little easier to read
    export LESS_TERMCAP_mb=$'\E[01;31m'
    export LESS_TERMCAP_md=$'\E[01;31m'
    export LESS_TERMCAP_me=$'\E[0m'
    export LESS_TERMCAP_se=$'\E[0m'
    export LESS_TERMCAP_so=$'\E[01;44;33m'
    export LESS_TERMCAP_ue=$'\E[0m'
    export LESS_TERMCAP_us=$'\E[01;32m'
  ```

