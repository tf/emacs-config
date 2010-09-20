
(add-hook 'ruby-mode-hook
	  '(lambda ()
	    (outline-minor-mode 1)
	    (set (make-local-variable 'outline-regexp) " *\\(class \\|module \\|def \\|describe \\|context \\|it \\)")
	    (define-key ruby-mode-map (kbd "C-<return>")
	      (lambda ()
		(interactive)
		(outline-toggle-children)
		(show-branches)))
	    (when (rspec-buffer-is-spec-p)
	      (hide-body))))
