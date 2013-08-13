
(global-set-key (kbd "C-*") 'newline-above)
(global-set-key (kbd "C-+") 'newline-below)
(global-set-key (kbd "C-c y") 'duplicate-line)
(global-set-key (kbd "C-c C-w") 'delete-trailing-whitespace)

(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "C-x 9") 'kill-other-buffer)

(global-set-key (kbd "C-x g s") 'git-status)

(global-set-key (kbd "<insert>") 'dabbrev-expand)

(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c r") 'run-js-rake)

(global-set-key (kbd "C-x t") 'multi-term-next)
(global-set-key (kbd "C-x T") 'multi-term)