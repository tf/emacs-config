
(setq espresso-indent-level 2)
(setq espresso-auto-indent-flag nil)

(add-hook 'espresso-mode-hook
          (lambda ()
            (whitespace-mode 1)
            (flymake-mode t)))