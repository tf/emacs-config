(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers nil)

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
;;(flycheck-add-next-checker 'javascript-eslint 'javascript-flow)
(require 'flycheck-flow)
(flycheck-add-mode 'javascript-flow 'web-mode)
(flycheck-add-mode 'javascript-flow-coverage 'web-mode)
(flycheck-add-next-checker 'javascript-flow 'javascript-eslint)
(flycheck-add-next-checker 'javascript-eslint 'javascript-flow-coverage)

(flycheck-add-mode 'javascript-jshint 'web-mode)

;; disable json-jsonlist checking for json files
;(setq-default flycheck-disabled-checkers
;  (append flycheck-disabled-checkers
                                        ;    '(json-jsonlist)))

(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
