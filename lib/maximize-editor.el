
(defun maximize-editor ()
  "Maximize the active frame."
  (interactive)
  (shell-command "wmctrl -r :ACTIVE: -badd,maximized_vert,maximized_horz"))
