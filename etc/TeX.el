(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook
	  '(lambda () 
	     (LaTeX-math-mode 1)
	     (auto-fill-mode 1)
	     (abbrev-mode 1)
	     (ispell-change-dictionary "en_GB-ize")
	     (flyspell-mode 1)
	     (reftex-mode)

	     (define-key LaTeX-mode-map (kbd "C-c e") 'ebib)
	     (define-key LaTeX-mode-map (kbd "C-<") 'TeX-insert-braces)
	     (define-key LaTeX-mode-map  (kbd "C->") 
	       (lambda () 
		 (interactive) 
		 (let ((last-command-char ?\[))
		   (self-insert-command 1))
		 (let ((last-command-char ?\]))
		   (self-insert-command 1))
		 (backward-char)))

	     (define-key LaTeX-mode-map (kbd "C-<insert>") 
	       (lambda () 
		 (interactive) 
		 (LaTeX-insert-environment "equation*")))

	     (define-key LaTeX-mode-map (kbd "C-^") 
	       (lambda () 
		 (interactive) 
		 (let ((last-command-char ?\\))
		   (self-insert-command 1))))))







