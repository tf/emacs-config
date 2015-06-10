(defun x-doc-paragraph-boundaries ()
  (interactive)
  (setq paragraph-separate "^[ \t]*\\(\\(/[/\\*]+\\)\\|\\(\\*+/\\)\\|\\(\\*?\\)\\|\\(\\*?[ \t]*\\(@[[:alpha:]]+\\|-\\)\\([ \t]+.*\\)?\\)\\)[ \t]*$")
  (setq paragraph-start (symbol-value 'paragraph-separate)))

(defun rdoc-paragraph-boundaries ()
  (interactive)
  (setq paragraph-separate "[ \t]*#[ \t]*$")
  (setq paragraph-start "^[ \t]*\\(#\\|#[ \t]*\\(@[[:alpha:]]+\\|-\\)\\([ \t]+.*\\)?\\)[ \t]*$"))

;  (setq paragraph-separate "^[ \t]*\\(\\(#\\)\\|\\(#[ \t]*\\(@[[:alpha:]]+\\|-\\)\\([ \t]+.*\\)?\\)\\)[ \t]*$")
;  (setq paragraph-start (symbol-value 'paragraph-separate)))



;^[ \t]*
;\\(
;   \\(
;      /[/\\*]+ ; // or /*
;   \\)
;\\|
;   \\(
;      \\*+/   ; */
;   \\)
;\\|
;   \\(
;      \\*?    ; *
;   \\)
;\\|
;   \\(
;      \\*?[ \t]*  
;      \\(
;         @[[:alpha:]]+   ; * @sdfsdf sdfsdfsdf
;      \\|
;         -               ; * - sdfsdfsdf
;      \\)
;      \\(
;         [ \t]+.*       
;      \\)?
;   \\)
;\\)
;[ \t]*$
