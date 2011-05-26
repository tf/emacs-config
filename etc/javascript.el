
(setq espresso-indent-level 2)
(setq espresso-auto-indent-flag nil)

(add-hook 'espresso-mode-hook
          (lambda ()
            (define-key espresso-mode-map (kbd "C-c g") 'add-js-global-current-word)
            
            (whitespace-mode 1)
            (abbrev-mode 1)
            (flymake-mode t)))