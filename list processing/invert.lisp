; custom append func which add a list to another
(defun appendc (list_in1 list_in2)
    (if (eq (cdr list_in1) NIL)
        (if (eq (car list_in1) NIL)
            list_in2
            (cons (car list_in1) list_in2)
        )
        (cons (car list_in1) (appendc (cdr list_in1) list_in2))   
    )
)
(defun invert (list_in) 
    (if (eq (cdr list_in) NIL)
        (if (eq (car list_in) NIL)
            NIL
            (list (car list_in))
        )
        (appendc (invert (cdr list_in)) (list (car list_in)))
    )
)

(print (appendc `(1 2 3) `(4 5)))
(print (invert `(1 2 3 4 5)))