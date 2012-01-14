"ref http://www.curiosity-drives.me/2012/01/vimjavascript.html
"ref http://cou929.nu/data/google_javascript_style_guide/
"
"easy_install http://closure-linter.googlecode.com/files/closure_linter-latest.tar.gz

if exists("current_compiler")
    finish
endif
let current_compiler = "gjslint"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal
endif

CompilerSet makeprg=/usr/local/bin/gjslint\ %
CompilerSet errorformat=%-P%>-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ %t:%n:\ %m,%-Q

