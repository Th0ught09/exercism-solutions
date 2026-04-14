;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
  (if (= n 0)
      t
 (= (arm n (ceiling (log n 10))) n))
  )

(defun arm (number power)
    (if (eq number 0)
        0
    (+ (expt (mod number 10) power) (arm (/ number 10) power))
    ))

;;; armstrong-numbers.el ends here
