;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun find-binary (array value)
  (if (eq nil array)
      nil
  (find-binary-helper array value 0 (length array)))
  )

(defun find-binary-helper (array value start end)
  "Find the array value"
  (let ((index (floor ( / (float(+ start end)) 2))))
    (if (eq (aref array index) value)
        index
    (if (eq start index)
        nil
      (if (eq (- end 1) index)
          nil
      (if (< (aref array index) value)
          (find-binary-helper array value index end)
        (find-binary-helper array value start index))
  )))))

(find-binary-helper [1 2 3] 2 0 3)
(find-binary [6] 6)
(find-binary [1 3 4 6 8 9 11] 1)
(find-binary [1 3 4 6 8 9 11] 13)
(find-binary [1 3 4 6 8 9 11] 7)
(/ (float(+ 0 1)) 2)

(floor ( / (float(+ 0 (length [1 3 4 6 8 9 11]))) 2))
(floor ( / (float(+ 0 3)) 2))
(floor ( / (float(+ 0 1)) 2))
(eq (aref [1 3 4 6 8 9 11] 0) 1)

(provide 'binary-search)
;;; binary-search.el ends here
