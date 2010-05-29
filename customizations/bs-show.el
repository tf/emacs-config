(require 'bs)
(add-to-list 'bs-configurations
	     '("modified" nil nil nil
	       (lambda (buf)
		 (not (buffer-modified-p buf))) bs-sort-buffer-interns-are-last))
	       
		   