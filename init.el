(add-to-list 'load-path "~/.emacs.d")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file nil t)

(load "vendor" nil t)
(load "lib" nil t)
(load "customizations" nil t)

(maximize-editor)





