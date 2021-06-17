(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-abbrev-prefix "ß")
 '(TeX-auto-save t)
 '(TeX-newline-function (quote newline-and-indent))
 '(TeX-output-view-style
   (quote
    (("^dvi$"
      ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$")
      "%(o?)dvips -t landscape %d -o && gv %f")
     ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f")
     ("^dvi$"
      ("^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "^landscape$")
      "%(o?)xdvi %dS -paper a4r -s 0 %d")
     ("^dvi$" "^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "%(o?)xdvi %dS -paper a4 %d")
     ("^dvi$"
      ("^\\(?:a5\\(?:comb\\|paper\\)\\)$" "^landscape$")
      "%(o?)xdvi %dS -paper a5r -s 0 %d")
     ("^dvi$" "^\\(?:a5\\(?:comb\\|paper\\)\\)$" "%(o?)xdvi %dS -paper a5 %d")
     ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d")
     ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d")
     ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d")
     ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d")
     ("^dvi$" "." "%(o?)xdvi %dS -watchfile 1 -s 5 -geometry 2000x2000 %d")
     ("^pdf$" "." "xpdf -remote %s -raise %o %(outpage)")
     ("^html?$" "." "netscape %o"))))
 '(calendar-date-style (quote european))
 '(calendar-week-start-day 1)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(display-time-24hr-format t)
 '(flycheck-check-syntax-automatically (quote (save mode-enabled)))
 '(font-latex-fontify-sectioning (quote color))
 '(mixfmt-mix "/usr/local/bin/mix")
 '(org-agenda-files (quote ("~/Dokumente/pageflow.org")))
 '(package-selected-packages
   (quote
    (color-theme company tide prettier-js flycheck-flow web-mode scss-mode rspec-mode multi-term markdown-mode json-mode js2-mode flycheck exec-path-from-shell enh-ruby-mode elixir-mode)))
 '(prettier-js-args (quote ("--single-quote")))
 '(rspec-spec-command "bin/rspec")
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-rake-when-possible nil)
 '(rspec-use-spring-when-possible nil)
 '(safe-local-variable-values (quote ((TeX-master . paper))))
 '(smerge-command-prefix "m")
 '(toggle-mapping-style (quote teaspoon)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-warning ((t (:underline (:color "gold" :style wave))))))
