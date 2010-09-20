
(defadvice mouse-set-point (before set-mark-before-mouse-set-point ())
  "Set mark before moving point by mouse."
  (push-mark nil t))
;(ad-disable-advice 'mouse-set-point 'before 'set-mark-before-mouse-set-point)

(ad-activate 'mouse-set-point)