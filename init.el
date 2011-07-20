(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/rails-reloaded")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file nil t)

(load "vendor" nil t)
(load "lib" nil t)
(load "etc" nil t)
(load "abbrevs" nil t)

(maximize-editor)
(ido-mode 1)

(load "color/custom-dark" nil t)
(color-theme-custom-dark)

