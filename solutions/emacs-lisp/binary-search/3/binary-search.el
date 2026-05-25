;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun find-binary (array value)
  (if (seq-empty-p array)
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

(provide 'binary-search)
;;; binary-search.el ends here
