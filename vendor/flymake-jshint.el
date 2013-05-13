;;; flymake-jshint.el --- JSHint mode for Emacs
;;
;; Version: 20130329
;;
;; invokes the jshint executable.
;;
;; adapted from https://github.com/daleharvey/jshint-mode
;;
;; Installation:
;;
;; on your shell:
;;
;;     npm install -g jshint
;;
;; in your emacs config:
;;
;;     (autoload 'flymake-jshint "~/.emacs.d/vendor/flymake-jshint")
;;     (add-hook 'javascript-mode-hook
;;         (lambda ()
;;           (flymake-jshint)
;;           (flymake-mode t)))
;;
;; run M-x flymake-mode to turn flymake on and off
;;

(require 'flymake)

(defun flymake-jshint-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
         (local-file (file-relative-name temp-file
                                         (file-name-directory buffer-file-name))))
    (message (pwd))
    (list "jshint" (list local-file))))

(defun flymake-jshint ()
  "Register jshint with flymake."
  (setq flymake-allowed-file-name-masks
        (cons '(".+\\.js$"
                flymake-jshint-init
                flymake-simple-cleanup
                flymake-get-real-file-name)
              flymake-allowed-file-name-masks))

  (setq flymake-err-line-patterns
        (cons '("^\\([^:]+\\): line \\([[:digit:]]+\\), col \\([[:digit:]]+\\), \\(.+\\)$"
                1 2 3 4)
              flymake-err-line-patterns)))

(provide 'flymake-jshint)

;;; flymake-jshint.el ends here