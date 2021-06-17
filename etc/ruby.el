(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-add-encoding-comment-on-save nil)

(add-hook 'enh-ruby-mode-hook
	  '(lambda ()
	    (outline-minor-mode 1)
	    (ruby-electric-mode 1)
            (whitespace-mode 1)
            (abbrev-mode 1)
            (set (make-local-variable 'outline-regexp) " *\\(class \\|module \\|def \\|describe \\|context \\|it \\)")

            (define-key ruby-mode-map (kbd "RET") 'newline-and-indent)
	    (define-key ruby-mode-map (kbd "C-<return>")
	      (lambda ()
		(interactive)
		(outline-toggle-children)
		(show-branches)))
            (define-key ruby-mode-map (kbd "C-c u")
	      (lambda ()
		(interactive)
		(toggle-style 'ruby-unit)
		(toggle-buffer)))
            (define-key ruby-mode-map (kbd "C-c i")
	      (lambda ()
		(interactive)
		(toggle-style 'ruby-integration)
		(toggle-buffer)))
            (define-key ruby-mode-map (kbd "C-c t")
	      (lambda ()
		(interactive)
		(toggle-style 'ruby)
		(toggle-buffer)))

            (define-key ruby-mode-map (kbd "C-c a") 'add-ruby-constructor-assignment)
            (define-key ruby-mode-map (kbd "C-c A") 'add-ruby-attr-reader)
            (define-key ruby-mode-map (kbd "C-c c") 'ruby-make-constructor)
            (define-key ruby-mode-map (kbd "C-c C-a")
              (lambda ()
                (interactive)
                (add-ruby-constructor-assignment)
                (add-ruby-attr-reader)))))
