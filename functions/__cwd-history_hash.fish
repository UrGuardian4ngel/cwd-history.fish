function __cwd-history_hash --argument-names path
  # The `fish_md5` function was privatised in Fish v3.3.1.
  # https://github.com/fish-shell/fish-shell/commit/926c1f10161495c032d6b3141e947e923a5aefe5#diff-ac5a4eadf24d2868dbeb47954fd7619feda446be3aa462318b908985c351ed4f
  if type --quiet __fish_md5
    __fish_md5 -s $path
  else
    fish_md5 -s $path
  end
end
