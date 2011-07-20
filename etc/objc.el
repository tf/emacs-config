
(add-hook 'objc-mode-hook
          (lambda ()
            (setq c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)
            (whitespace-mode t)))