;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/

  (whitespace-mode 1)
  (define-key web-mode-map (kbd "C-c C-w") 'delete-trailing-whitespace)

  (add-to-list 'web-mode-indentation-params '("case-extra-offset" . nil))

  (setq web-mode-content-types-alist '(("jsx"  . "\\.js[x]?")))
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook  'my-web-mode-hook)
