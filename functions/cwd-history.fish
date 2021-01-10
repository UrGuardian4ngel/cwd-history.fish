function cwd-history --argument-names cmd --description "Scopes your command history to the current working directory"
  switch "$cmd"
    case enable
      set --local directory_hash (fish_md5 -s (pwd -P))
      __cwd-history_use $directory_hash
    case disable
      __cwd-history_use 'default'
  end
end
