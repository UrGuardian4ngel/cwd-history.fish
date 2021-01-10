function __cwd-history_use --argument-names session_name
  set --query fish_private_mode; and return 1
  set --global --export fish_history $session_name
end
