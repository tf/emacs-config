(defun run-js-rake()
  "Run rake with gemset 1.9.2@js"
  (interactive)
  (shell-command "source $HOME/.rvm/scripts/rvm && rvm 1.9.2@js rake")
  (if (<= (* 2 (window-height)) (frame-height))
      (enlarge-window 20)
    nil))