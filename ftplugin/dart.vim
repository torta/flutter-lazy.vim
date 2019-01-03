setlocal autoread
autocmd BufWritePost *.dart silent! execute '!($(dirname $(pgrep -f flutter_tool | xargs ps -o command= -p | cut -d" " -f1) || dirname $(dirname $(which flutter))/cache/dart-sdk/bin/.)/dartfmt --fix -w %; (pgrep -f flutter_tool | xargs kill -s USR1)) >/dev/null 2>&1' | redraw!
