(defun duplicate-line()
 "Duplicate line."
 (interactive)
 (let ((beg (line-beginning-position))
       (end (line-end-position)))
   (copy-region-as-kill beg end)
   (beginning-of-line)
   (forward-line 1)
   (yank)
   (newline)
   (forward-line -1)))

(defun newline-above()
  "Insert new line above"
  (interactive)
  (beginning-of-line)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode)
)

(defun newline-below()
  "Insert new line below"
  (interactive)
  (end-of-line)
  (newline-and-indent)
)
