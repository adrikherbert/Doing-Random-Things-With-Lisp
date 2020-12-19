;;;; Simple program created through tutorial by Derek Banas

#||

  I'm a
  multi
  line
  comment!

; Printing to the terminal! (hence the 't')
(format t "What is your age?~%")

; DEFining a VARiable!
(defvar *age* (read))

; IF statement!
(if (>= *age* 18)
  (format t "You can vote!~%")
  (format t "You can't vote!~%"))

; LOGIC operator!
(if (or (<= *age* 14) (>= *age* 67))
  (format t "Work if you want~%")
  (format t "Time for work~%"))

; DEFining a fUNction!
(defun get-school-year (age)
  ; CASE (switch) statement!
  (case age
      (5 (format t "Kindergarten~%"))
      (10 (format t "Primary School~%"))
      (14 (format t "High School~%"))
      (18 (format t "College"))
      (otherwise (format t "I dunno :/"))))

; Calling our function!
(get-school-year *age*)

; Add a newline
(terpri)

'When' and 'Unless' are similar
to an 'if' statement, but multiple lines
are executed--'Unless' is the inverse of
'When'

||#

#||
  LOOPS
    * loop for x from 1 to 10 do ...
    * loop for x in '(...) <-- list
    * dotimes (x 10) ...

  IMPORTANT FUNCTIONS
    * (cons 'carrot 'broccoli) <-- "consecutive", stitches list elements together
    * (list 'carrot 'broccoli 'celery) <-- creates list
    * (car '(...)) <-- returns first list element
    * (cdr '(...)) <-- returns everything but first list element
      * 'a' returns first element, 'd' returns everything, so if you wanted
      the second element in a list, you would use (cadr '(...))
      * only allowed 4 'a's and 'd's

  LIST CONDITIONALS & OTHER SHENANS
    * (listp ...) <-- checks if parameter is a list
    * (member X '(...)) <-- checks if 'X' is in the parameter list
    * (append ...lists...) <-- appends lists and items to lists and items
    * (push X '(list)) <-- pushes a value onto a list stack-style
||#

(defun palindromep (elements)
  (format t "~d~%" (length elements))
  (cond
      ((or (= (length elements) 0) (= (length elements) 1)) t)
      ((and (> (length elements) 1) (eq (car elements) (car (last elements)))) (palindromep (butlast (cdr elements))))
      (t nil)
  )
)

(format t "~a~%" (palindromep '(abc dcd abc dcd)))
