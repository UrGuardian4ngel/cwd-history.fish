function cwd-history --argument-names cmd --description "Scopes your command history to the current working directory"
  switch "$cmd"
    case enable update
      set --local directory_hash (__cwd-history_hash (pwd -P))
      __cwd-history_use $directory_hash
    case disable
      __cwd-history_use 'fish'
  end
end
