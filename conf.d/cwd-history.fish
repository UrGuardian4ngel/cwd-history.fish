if status --is-interactive
  function __cwd-history_update --on-variable PWD
    cwd-history update
  end

  __cwd-history_update
end
