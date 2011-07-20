
(define-abbrev fundamental-mode-abbrev-table "ext" "" 'javascript-skeleton-class-extend)
(define-abbrev fundamental-mode-abbrev-table "imm" "" 'javascript-skeleton-immediate-function)

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
