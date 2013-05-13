(defun zeus-test ()
  ""
  (interactive)
  (let ((root-dir (locate-dominating-file (buffer-file-name) "Gemfile")))
    (shell-command (format "(cd %s; rspec --color --tty spec)" root-dir))))

;(require 'ansi-color)

;(defadvice display-message-or-buffer (before ansi-color activate)
;  "Process ANSI color codes in shell output."
;  (let ((buf (ad-get-arg 0)))
;    (and (bufferp buf)
;         (string= (buffer-name buf) "*Shell Command Output*")
;         (with-current-buffer buf
;           (ansi-color-apply-on-region (point-min) (point-max))))))

;(add-hook 'shell-mode-hook 
;     '(lambda () (toggle-truncate-lines 1)))