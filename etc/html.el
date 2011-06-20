
(add-hook 'html-mode-hook
	  '(lambda ()
             (whitespace-mode 1)
	     (define-key html-mode-map (kbd "C-c C-e") 'sgml-close-tag)
	     ))
