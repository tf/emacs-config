
(add-hook 'ruby-mode-hook
	  '(lambda ()
	    (outline-minor-mode 1)
	    (ruby-electric-mode 1)
            (whitespace-mode 1)
	    (set (make-local-variable 'outline-regexp) " *\\(class \\|module \\|def \\|describe \\|context \\|it \\)")
	    (define-key ruby-mode-map (kbd "RET") 'newline-and-indent)
            (define-key ruby-mode-map (kbd "C-c C-s") 'zeus-test)
	    (define-key ruby-mode-map (kbd "C-<return>")
	      (lambda ()
		(interactive)
		(outline-toggle-children)
		(show-branches)))))
