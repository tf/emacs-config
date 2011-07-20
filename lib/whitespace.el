(defun whitespace-indent-with-tabs()
 "Tabs of width 4."
 (interactive)
 (setq indent-tabs-mode t)
 (setq tab-width 4)
 (setq c-basic-offset 4)
 (setq espresso-indent-level 4)
 (setq sgml-basic-offset 4))

(defun whitespace-indent-with-spaces()
 "2 spaces."
 (interactive)
 (setq indent-tabs-mode nil)
 (setq tab-width 4)
 (setq c-basic-offset 2)
 (setq espresso-indent-level 2)
 (setq sgml-basic-offset 2))