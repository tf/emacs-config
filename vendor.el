
(load "auctex" nil t)
(load "preview-latex.el" nil t)

(require 'rails-autoload)

(autoload 'ebib "vendor/ebib" "Ebib, a BibTeX database manager." t)
(autoload 'espresso-mode "vendor/espresso" nil t)
(autoload 'git-status "vendor/git" "Entry point into git-status mode." t)
(autoload 'git-blame-mode "vendor/git-blame" "Minor mode for incremental blame for Git." t)
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode" t)
(autoload 'ruby-electric-mode "vendor/ruby-electric" nil t)
(autoload 'ruby-mode "vendor/ruby-mode" "Major mode for ruby files" t)
(autoload 'run-ruby "vendor/inf-ruby" "Run an inferior Ruby process" t)
(autoload 'yaml-mode "vendor/yaml-mode" nil t)
