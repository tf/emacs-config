(add-to-list 'load-path "~/.emacs.d")

(load "customizations")
(load "vendor")

;; NOT ORGANIZED YET

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(scroll-bar-mode -1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(transient-mark-mode 0)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-math-abbrev-prefix "ß")
 '(TeX-auto-save t)
 '(TeX-newline-function (quote newline-and-indent))
 '(TeX-output-view-style (quote (("^dvi$" ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$") "%(o?)dvips -t landscape %d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "^landscape$") "%(o?)xdvi %dS -paper a4r -s 0 %d") ("^dvi$" "^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "%(o?)xdvi %dS -paper a4 %d") ("^dvi$" ("^\\(?:a5\\(?:comb\\|paper\\)\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s 0 %d") ("^dvi$" "^\\(?:a5\\(?:comb\\|paper\\)\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS -watchfile 1 -s 5 -geometry 2000x2000 %d") ("^pdf$" "." "xpdf -remote %s -raise %o %(outpage)") ("^html?$" "." "netscape %o"))))
 '(calendar-date-style (quote european))
 '(calendar-week-start-day 1)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(display-time-24hr-format t)
 '(font-latex-fontify-sectioning (quote color))
 '(outline-minor-mode-prefix "\\C-c\\C-o")
 '(safe-local-variable-values (quote ((TeX-master . paper)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq-default TeX-master nil)

(global-set-key [down-mouse-1] 'set-mark-command)

(global-set-key "\C-^" 
		(lambda () 
		  (interactive) 
		  (let ((last-command-char ?\\))
		    (self-insert-command 1))))

(global-set-key (kbd "C-<") 'TeX-insert-braces)
(global-set-key (kbd "C->") 
		(lambda () 
		  (interactive) 
		  (let ((last-command-char ?\[))
		    (self-insert-command 1))
		  (let ((last-command-char ?\]))
		    (self-insert-command 1))
		  (backward-char)))

(global-set-key (kbd "<insert>") 
		  'dabbrev-expand)

(global-set-key (kbd "C-<insert>") 
		(lambda () 
		  (interactive) 
		  (LaTeX-insert-environment "equation*")))



(add-hook 'LaTeX-mode-hook
	  '(lambda () 
	     (LaTeX-math-mode 1)
	     (auto-fill-mode 1)
	     (abbrev-mode 1)
	     (ispell-change-dictionary "en_GB-ize")
	     (flyspell-mode 1)))

;; Maximize

(defun maximize-editor ()
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -badd,maximized_vert,maximized_horz"))

(maximize-editor)

;; Backup/Autosave

(defvar user-temporary-file-directory "/home/tim/.emacs.d/tmp/")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))


;; Duplicate line

(defun duplicate-line()
 "Duplicate line."
 (interactive)
 (let (
       (beg (line-beginning-position))
       (end (line-end-position)))
   (copy-region-as-kill beg end)
   (beginning-of-line)
   (forward-line 1)
   (yank)
   (newline)
   (forward-line -1)))

(add-hook 'ruby-mode-hook
  (lambda ()
    (define-key ruby-mode-map (kbd "C-c y") 'duplicate-line)))

(defun newline-above()
  "Insert new line above"
  (interactive)
  (beginning-of-line)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode)
)

(defun newline-below()
  "Insert new line below"
  (interactive)
  (end-of-line)
  (newline-and-indent)
)

(global-set-key (kbd "C-*") 'newline-above)
(global-set-key (kbd "C-+") 'newline-below)
;; (global-set-key (kbd "M-\237") 'indent-region)

(put 'narrow-to-region 'disabled nil)

;; Unique Buffer Names

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

;; Kill other buffer

(fset 'kill-other-buffer
   [?\C-x ?o ?\C-x ?k return ?\C-x ?0])
(global-set-key (kbd "C-x 9") 'kill-other-buffer)

;; lambda

(defun sm-lambda-mode-hook () 
  (font-lock-add-keywords 
   nil `(("\\<lambda\\>" 
   (0 (progn (compose-region (match-beginning 0) (match-end 0) 
        ,(make-char 'greek-iso8859-7 107)) 
      nil)))))) 
(add-hook 'emacs-lisp-mode-hook 'sm-lambda-mode-hook) 
(add-hook 'lisp-interactive-mode-hook 'sm-lamba-mode-hook) 
(add-hook 'scheme-mode-hook 'sm-lambda-mode-hook) 
