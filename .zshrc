# Created by newuser for 5.0.2

# 何はともあれまずは補完
autoload -U compinit
compinit -u

# localな設定はlocal.zsから反映
[ -f ~/.zsh/local.zsh ] && source ~/.zsh/local.zsh
# promptな設定はprompt.zshから反映
[ -f ~/.zsh/prompt.zsh ] && source ~/.zsh/prompt.zsh
# auto-fuな設定はazfu.zshから反映
[ -f ~/.zsh/azfu.zsh ] && source ~/.zsh/azfu.zsh

# alias
alias ls='ls -lah --color=tty'
alias lh='\ls -lh --color=tty'
alias df='df -h'
alias vi=vim
alias viz='vi ~/.zshrc'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias cd..='cd ..'
alias md='mkdir -p'
alias history='history 1'
alias soz='source ~/.zshrc'
alias grep='grep -in'
export GREP_COLOR='01;33'
export GREP_OPTIONS='--color=auto'
# |のあと...
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g W='| wc'
alias -g S='| sed'
alias -g A='| awk'
alias -g SU='| sort | uniq'

# kayac
alias -g kayac='&& curl -d "message=script end" "http://im.kayac.com/api/post/show_no"'

# 256
alias 256color='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'

# cd 補完
setopt auto_pushd
# cdコマンド打たずにディレクトリ名指定するだけで移動可に
setopt auto_cd

# HIST関連
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000              
SAVEHIST=100000
# 毎回ヒストリファイルを作成するのではなく、追加していく
setopt append_history
# 直前に入力したコマンドと重複している場合は記録しない
setopt hist_ignore_dups
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
setopt hist_no_store
# 複数のプロンプトでhistoryを共有する
setopt share_history
# 余分な空白は詰めて記録する
setopt hist_reduce_blanks
#setopt extended_history      # 履歴ファイルに開始時刻と経過時間を記録
unsetopt extended_history
# historyコマンドは履歴に登録しない
setopt hist_no_store


# 補完候補一覧でファイルの種別を識別マーク表示 (訳注:ls -F の記号)
setopt list_types
# コマンドラインの引数で --PREFIX=/USR などの = 以降でも補完できる
setopt magic_equal_subst
# collectしてくれる
# コマンド間違えたら自動で補完してくれる
setopt correct
# 補完候補を詰めてくれる
setopt list_packed
setopt list_types
# カッコの対応などを自動的に補完
setopt auto_param_keys

# nobeep
setopt nolistbeep

# `.' で開始するファイル名にマッチさせるとき、先頭に明示的に `.' を指定する必要がなくなる
# 有効になってない気がする！
#setopt GLOB_DOTS
setopt glob_dots 

#aliasも補完できるようにする
#よくわからない
setopt complete_aliases
# ログアウト時にバックグランドジョブをkillしない
setopt no_hup
# C-d でログアウトしない
setopt ignore_eof
# コマンド名に/が含まれていた場合PATH中のサブディレクトリを探す
# すげー重くなるからなし
#setopt path_dirs
# rm * を実行する前に確認
setopt rm_star_wait
# バックグランドジョブが終了したらすぐに知らせる
setopt notify

# viっぽく
#bindkey -v

# file permission
umask 022

# cd した後に ls する
#function chpwd() { \ls -a --color=tty }
function chpwd() { lh }

# カレントディレクトリをcdした後候補から外す
#zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' ignore-parents parent pwd

# 補完候補を←↓↑→で選択
zstyle ':completion:*:default' menu select=1
# 補完候補も LS_COLORS に従って色づけ
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# 補完候補のメニュー選択で、矢印キーの代わりにhjklで移動出来るようにする。
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# カレントディレクトリに候補がない場合のみ cdpath 上のディレクトリを候補
zstyle ':completion:*:cd:*' tag-order local-directories path-directories

# history incremental search
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# ls /usr/local/etc などと打っている際に、C-w で単語ごとに削除
# この設定 : ls /usr/local → ls /usr/ → ls /
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# Scouter
function scouter() {
  sed -e '/^\s*$/d' -e '/^\s*#/d' ${ZDOTDIR:-$HOME}/.zshrc | wc -l
}
