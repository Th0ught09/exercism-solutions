;;; bob.el --- Bob (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun response-for (phrase)
  (if (eq (length phrase) 0)
      "Fine. Be that way!"
    (if (string-equal (upcase phrase) phrase)
        (if (string-equal (substring phrase (- (length phrase) 1)) "?")
      "Calm Down, I know what I'm doing!"
      "Whoa, chill out!")
    (if (string-equal (substring phrase (- (length phrase) 1)) "?")
        "Sure."
      "Whatever."))))

(response-for "hi?")


(provide 'bob)
;;; bob.el ends here

()(substring "hi?" (- (length "hi?") 1))
(upcase "hi")
