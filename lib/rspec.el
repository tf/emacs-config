
(defun rspec-spec-file-p (a-file-name)
  "Returns true if the specified file is a spec"
  (string-match "\\(_\\|-\\)spec\\.rb$" a-file-name))

(defun rspec-buffer-is-spec-p ()
  "Returns true if the current buffer is a spec"
  (and (buffer-file-name)
       (rspec-spec-file-p (buffer-file-name))))
