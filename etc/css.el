
(setq-default css-indent-offset 2)

(add-hook 'css-mode-hook
          (lambda ()
            (abbrev-mode t)
            (whitespace-mode t)))