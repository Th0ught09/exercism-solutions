;;; bob.el --- Bob (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun response-for (phrase)
  (if (not(string-match "\\([a-zA-Z1-9]+??\\|?\\)" phrase))
      "Fine. Be that way!"
    (if (or (string-match "[a-z]+" phrase) (not (string-match "[A-Z]+" phrase)))
        (if (string-match "?\s*$" phrase)
            "Sure."
        "Whatever.")
        (if (string-equal (substring phrase (- (length phrase) 1)) "?")
        "Calm down, I know what I'm doing!"
        "Whoa, chill out!"
        )
    )
    )
)

(provide 'bob)
;;; bob.el ends here
