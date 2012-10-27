
(define-abbrev fundamental-mode-abbrev-table "ext" "" 'javascript-skeleton-class-extend)
(define-abbrev fundamental-mode-abbrev-table "imm" "" 'javascript-skeleton-immediate-function)
(define-abbrev fundamental-mode-abbrev-table "desf" "" 'javascript-skeleton-jasmine-describe)
(define-abbrev fundamental-mode-abbrev-table "itf" "" 'javascript-skeleton-jasmine-it)
(define-abbrev fundamental-mode-abbrev-table "prp" "" 'javascript-skeleton-constr-prop)

(define-skeleton javascript-skeleton-class-extend
  "Insert class extend"
  nil
  "extend({" \n
  > "init: function(" _ ") {" \n
  -2 "}" \n
  -2 "});")

(define-skeleton javascript-skeleton-immediate-function
  "Insert immediate function"
  nil
  "(function() {" \n
  >  _  \n
  -2 "}());")

(define-skeleton javascript-skeleton-jasmine-describe
  "Insert jasmine descibe"
  nil
  "describe('" _ "', function() {" \n
  > \n
  -2 "});")


(define-skeleton javascript-skeleton-jasmine-it
  "Insert jasmine it"
  nil
  "it('" _ "', function() {" \n
  > \n
  -2 "});")

(define-skeleton javascript-skeleton-constr-prop
  "Constructor property assignment"
  "name: "
  "this._" str " = " str ";")
