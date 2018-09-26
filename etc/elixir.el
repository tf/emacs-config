(add-hook 'elixir-mode-hook
	  '(lambda ()
            (whitespace-mode 1)

            (define-key elixir-mode-map (kbd "C-c , t")
	      (lambda ()
		(interactive)
		(toggle-style 'elixir)
		(toggle-buffer)))
            
            (define-key elixir-mode-map (kbd "C-c C-f") 'mix-format)))
