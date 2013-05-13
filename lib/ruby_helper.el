
(defun add-ruby-constructor-assignment-named (name)
  ""
  (interactive)
  (save-excursion
    (search-forward " end")
    (newline-above)
    (insert "@")
    (insert name)
    (insert " = ")
    (insert name)))

(defun add-ruby-constructor-assignment ()
  ""
  (interactive)
  (add-ruby-constructor-assignment-named (thing-at-point 'symbol)))

(defun add-ruby-attr-reader-named (name)
  ""
  (let ((contains-attr (save-excursion
                         (goto-char (point-min))
                         (re-search-forward "attr_\\(reader\\|writer\\)" nil t))))
    (save-excursion
      (if contains-attr
          (progn
            (message "foo")
            (re-search-backward "attr_\\(reader\\|writer\\)")
            (end-of-line)
            (insert ", :")
            (insert name))
        (message "bar")
        (search-backward "class ")
        (newline-below)
        (insert "attr_reader :")
        (insert name)
        (newline)))))

(defun add-ruby-attr-reader ()
  ""
  (interactive)
  (add-ruby-attr-reader-named (thing-at-point 'symbol)))

(defun ruby-make-constructor ()
  ""
  (interactive)
  (let ((current-line (buffer-substring-no-properties (line-beginning-position)
                                                      (line-beginning-position 2))))
    (string-match "(\\([^)]*\\))" current-line)
    (mapcar '(lambda (a)
               (add-ruby-attr-reader-named a)
               (add-ruby-constructor-assignment-named a))
            (split-string (match-string 1 current-line) ", "))))
