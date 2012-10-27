
(define-abbrev ruby-mode-abbrev-table "prp" "" 'ruby-skeleton-assignment)

(define-skeleton ruby-skeleton-assignment
  "Assign instance variable from parameter"
  "name: "
  "@" str " = " str)
