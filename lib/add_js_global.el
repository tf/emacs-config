
(defun add-js-global-current-word ()
  ""
  (interactive)
  (let (current-word)
    (setq current-word (thing-at-point 'word))
    (save-excursion
      (search-backward "/*global")
      (let ((current-line (buffer-substring-no-properties (line-beginning-position)
                                                         (line-beginning-position 2))))
        (search-forward "*/")
        (backward-char 2)
        (if (not (string-match "/\\*global\\s-*\\*/" current-line))
            (insert ","))
        (if (not (string-match "\\s-\\*/" current-line))
            (insert " "))
        (insert current-word)))))
