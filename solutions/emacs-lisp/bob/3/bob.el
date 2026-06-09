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

(response-for "HI?")
(response-for "\t\t\t\t\t\t\t\t\t\t")

(provide 'bob)
;;; bob.el ends here

()(substring "hi?" (- (length "hi?") 1))
(upcase "hi")

(string-match "[a-zA-Z\s]+??" "hi")

(or (string-match "[a-z]+" "WHAT'S GOING ON?") (not (string-match "[A-Z]+" "WHAT'S GOING ON?")))
(string-match "[a-z]+" "WHAT'S GOING ON?")
(string-match "?$" "hi?")
(string-match "?\s*$" "Okay if like my  spacebar  quite a bit?   ")
(string-match "[a-z]+" "WHAT'S GOING ON?")
(string-match "[a-zA-Z\s1-9]+??" "4?")
