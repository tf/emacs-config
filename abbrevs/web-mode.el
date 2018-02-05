(define-abbrev web-mode-abbrev-table "rdaco" "" 'redux-action-constant)
(define-abbrev web-mode-abbrev-table "rdacr" "" 'redux-action-creator)

(define-skeleton redux-action-constant
  "Insert Redux action constant"
  nil
  "export const " (setq v1 (upcase (replace-regexp-in-string " " "_" (skeleton-read "Name: ")))) " = '" v1 "';" \n)

(define-skeleton redux-action-creator
  "Insert Redux action creator"
  nil
  "export function "
  (setq v1 (skeleton-read "Name: "))
  "() {" \n
  > "return {" \n
  > "type: "
  (upcase (let ((case-fold-search nil)) (replace-regexp-in-string "\\([A-Z]\\)" "_\\1" v1))) \n
  -2 "};" \n
  -2 "}")
