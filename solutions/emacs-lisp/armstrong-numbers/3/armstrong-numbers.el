;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
 (= (arm n (ceiling (log n 10))) n))

(defun arm (number power)
    (if (eq number 0)
        0
    (+ (expt (mod number 10) power) (arm (/ number 10) power))
    ))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
