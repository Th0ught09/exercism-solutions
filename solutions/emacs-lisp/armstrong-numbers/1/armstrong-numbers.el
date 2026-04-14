;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun armstrong-p (n)
 (eq (arm n 1) n))

(defun arm (number power)
    (if (eq number 0)
    (expt number power)
    (+ (expt (mod number 10) power) (arm (/ number 10) (+ power 1)))
    ))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
