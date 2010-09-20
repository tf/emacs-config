
(add-hook 'dired-mode-hook
	  '(lambda ()
	     (define-key dired-mode-map (kbd "C-c C-w") 'wdired-change-to-wdired-mode)))