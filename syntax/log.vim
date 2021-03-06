if exists("b:current_syntax")
  finish
endif

"syn match log_error 	'\c.*\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\).*'
syn match log_error 	' \<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\).*'
syn match log_warning 	'\c.*\<\(WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\).*'
syn region log_string 	start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string 	start=/"/ end=/"/ skip=/\\./
syn match log_number 	'0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match log_pkgname 	/\[.\{-2,}\] /
syn match log_info 	/- .*/

syn match   log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syn match   log_date '\d\{4}-\d\d-\d\d'

syn match   log_time '\d\d:\d\d:\d\d\s*'
syn match   log_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

hi def link log_string 		String
hi def link log_number 		Number
hi def link log_date 		Constant
hi def link log_time 		Type
hi def link log_error 		ErrorMsg
hi def link log_warning 	WarningMsg

hi def link log_pkgname 	PreCondit
hi def link log_info 	    CursorLineNr


syn match log_error_custom 'Caused by:.*'
syn match log_error_custom 'java.lang.*Exception.*'
syn match log_error_custom 'org.*Exception: .*'
hi def link log_error_custom 		Cursor


let b:current_syntax = "log"
