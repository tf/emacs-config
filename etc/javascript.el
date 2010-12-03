
(setq espresso-indent-level 2)

(add-hook 'espresso-mode-hook
          (lambda ()
            (whitespace-mode 1)
            (flymake-mode t)))