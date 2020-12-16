;;;; Simple program created through tutorial by Derek Banas

#||
  I'm a
  multi
  line
  comment!
||#

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
