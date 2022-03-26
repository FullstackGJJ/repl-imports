(module repl-imports

(repl-imports)

(import scheme (chicken sort) (chicken string) srfi-113 srfi-128)

(define raw-current-import-list (map (lambda (x) (car (string-split (->string x) "#"))) (map cdr (##sys#current-environment))))
(define current-import-set (list->set (make-default-comparator) raw-current-import-list))
(define sorted-current-import-list (sort (set->list current-import-set) (lambda (a b) (> 0 (string-compare3 a b)))))
(define (repl-imports) sorted-current-import-list)

) ;; end module
