;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun allergen-list (score)
 ())

(defun allergens ()
  "Return list of allergens."
'("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
  )

(defun allergic-to-p (score allergen)
 (let ((allergen-list (allergens)))
 (if (string-equal (nth (- score 1) allergen-list) allergen)
     t nil
     ))
 )

(allergic-to-p 1 "carrot")

(string-equal (nth (- 1 1) (allergens)) "eggs")

(defun max_number (score)
  "Returns the roght most bit equalling to 1"
  (score_helper score 1))

(defun score_helper (score number)
  (if (< (/ score 2) number)
      number
    (score_helper score (* number 2))))

(score_helper 1 128)

(provide 'allergies)
;;; allergies.el ends here
