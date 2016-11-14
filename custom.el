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
 '(font-latex-fontify-sectioning (quote color))
 '(package-selected-packages
   (quote
    (toggle elm-mode multi-term elixir-mode web-mode scss-mode json-mode js2-mode flycheck exec-path-from-shell)))
 '(rspec-use-rake-when-possible nil)
 '(safe-local-variable-values (quote ((TeX-master . paper))))
 '(toggle-mapping-style (quote teaspoon))
 '(toggle-mapping-styles
   (quote
    ((zentest
      ("app/controllers/\\1.rb" . "test/controllers/\\1_test.rb")
      ("app/views/\\1.rb" . "test/views/\\1_test.rb")
      ("app/models/\\1.rb" . "test/unit/\\1_test.rb")
      ("lib/\\1.rb" . "test/unit/test_\\1.rb"))
     (rspec
      ("app/models/\\1.rb" . "spec/models/\\1_spec.rb")
      ("app/controllers/\\1.rb" . "spec/controllers/\\1_spec.rb")
      ("app/views/\\1.rb" . "spec/views/\\1_spec.rb")
      ("app/helpers/\\1.rb" . "spec/helpers/\\1_spec.rb"))
     (rails
      ("app/controllers/\\1.rb" . "test/functional/\\1_test.rb")
      ("app/models/\\1.rb" . "test/unit/\\1_test.rb")
      ("lib/\\1.rb" . "test/unit/test_\\1.rb"))
     (ruby
      ("lib/\\1.rb" . "test/unit/\\1_test.rb")
      ("lib/\\1.rb" . "test/integration/\\1_test.rb"))
     (ruby-unit
      ("lib/\\1.rb" . "test/unit/\\1_test.rb")
      ("test/integration/\\1.rb" . "test/unit/\\1.rb"))
     (ruby-integration
      ("lib/\\1.rb" . "test/integration/\\1_test.rb")
      ("test/unit/\\1.rb" . "test/integration/\\1.rb"))
     (teaspoon
      ("app/assets/javascripts/\\1.js" . "spec/javascripts/\\1_spec.js"))
     (js-spec
      ("src/\\1.js" . "spec/\\1_spec.js")
      ("src/\\1.jsx" . "spec/\\1_spec.jsx"))
     (js-unit
      ("src/\\1.js" . "test/unit/\\1_test.js"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
