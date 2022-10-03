(defun-lazy p-t-nil (x) (cons t (cons nil x)))
(defun-lazy p-t-t (x) (cons t (cons t x)))
(defun-lazy p-nil-nil (x) (cons nil (cons nil x)))
(defun-lazy p-nil-t (x) (cons nil (cons t x)))
(defun-lazy alphabet-prefix-t (x) (p-t-nil (p-t-t x)))
(defun-lazy alphabet-prefix-nil (x) (2 p-t-nil x))
(def-lazy "A" (alphabet-prefix-t "A-tail"))
(def-lazy "B" (alphabet-prefix-t "B-tail"))
(def-lazy "C" (alphabet-prefix-t "C-tail"))
(def-lazy "D" (alphabet-prefix-t "D-tail"))
(def-lazy "E" (alphabet-prefix-t "E-tail"))
(def-lazy "F" (alphabet-prefix-t "F-tail"))
(def-lazy "G" (alphabet-prefix-t "G-tail"))
(def-lazy "H" (alphabet-prefix-t "H-tail"))
(def-lazy "I" (alphabet-prefix-t "I-tail"))
(def-lazy "J" (alphabet-prefix-t "J-tail"))
(def-lazy "K" (alphabet-prefix-t "K-tail"))
(def-lazy "L" (alphabet-prefix-t "L-tail"))
(def-lazy "M" (alphabet-prefix-t "M-tail"))
(def-lazy "N" (alphabet-prefix-t "N-tail"))
(def-lazy "O" (alphabet-prefix-t "O-tail"))
(def-lazy "P" (alphabet-prefix-nil "P-tail"))
(def-lazy "Q" (alphabet-prefix-nil "Q-tail"))
(def-lazy "R" (alphabet-prefix-nil "R-tail"))
(def-lazy "S" (alphabet-prefix-nil "S-tail"))
(def-lazy "T" (alphabet-prefix-nil "T-tail"))
(def-lazy "U" (alphabet-prefix-nil "U-tail"))
(def-lazy "V" (alphabet-prefix-nil "V-tail"))
(def-lazy "W" (alphabet-prefix-nil "W-tail"))
(def-lazy "X" (alphabet-prefix-nil "X-tail"))
(def-lazy "Y" (alphabet-prefix-nil "Y-tail"))
(def-lazy "Z" (alphabet-prefix-nil "Z-tail"))

(defun-lazy alphabet-lower-prefix-t (x) (p-t-nil (p-nil-t x)))
(defun-lazy alphabet-lower-prefix-nil (x) (p-t-nil (p-nil-nil x)))
(def-lazy "a" (alphabet-lower-prefix-t "A-tail"))
(def-lazy "b" (alphabet-lower-prefix-t "B-tail"))
(def-lazy "c" (alphabet-lower-prefix-t "C-tail"))
(def-lazy "d" (alphabet-lower-prefix-t "D-tail"))
(def-lazy "e" (alphabet-lower-prefix-t "E-tail"))
(def-lazy "f" (alphabet-lower-prefix-t "F-tail"))
(def-lazy "g" (alphabet-lower-prefix-t "G-tail"))
(def-lazy "h" (alphabet-lower-prefix-t "H-tail"))
(def-lazy "i" (alphabet-lower-prefix-t "I-tail"))
(def-lazy "j" (alphabet-lower-prefix-t "J-tail"))
(def-lazy "k" (alphabet-lower-prefix-t "K-tail"))
(def-lazy "l" (alphabet-lower-prefix-t "L-tail"))
(def-lazy "m" (alphabet-lower-prefix-t "M-tail"))
(def-lazy "n" (alphabet-lower-prefix-t "N-tail"))
(def-lazy "o" (alphabet-lower-prefix-t "O-tail"))
(def-lazy "p" (alphabet-lower-prefix-nil "P-tail"))
(def-lazy "q" (alphabet-lower-prefix-nil "Q-tail"))
(def-lazy "r" (alphabet-lower-prefix-nil "R-tail"))
(def-lazy "s" (alphabet-lower-prefix-nil "S-tail"))
(def-lazy "t" (alphabet-lower-prefix-nil "T-tail"))
(def-lazy "u" (alphabet-lower-prefix-nil "U-tail"))
(def-lazy "v" (alphabet-lower-prefix-nil "V-tail"))
(def-lazy "w" (alphabet-lower-prefix-nil "W-tail"))
(def-lazy "x" (alphabet-lower-prefix-nil "X-tail"))
(def-lazy "y" (alphabet-lower-prefix-nil "Y-tail"))
(def-lazy "z" (alphabet-lower-prefix-nil "Z-tail"))


(def-lazy "A-tail" (p-t-t     (p-t-nil     nil)))
(def-lazy "B-tail" (p-t-t     (p-nil-t     nil)))
(def-lazy "C-tail" (p-t-t     (p-nil-nil     nil)))
(def-lazy "D-tail" (p-t-nil   (p-t-t     nil)))
(def-lazy "E-tail" (p-t-nil   (p-t-nil     nil)))
(def-lazy "F-tail" (p-t-nil   (p-nil-t     nil)))
(def-lazy "G-tail" (p-t-nil   (p-nil-nil     nil)))
(def-lazy "H-tail" (p-nil-t   (p-t-t     nil)))
(def-lazy "I-tail" (p-nil-t   (p-t-nil     nil)))
(def-lazy "J-tail" (p-nil-t   (p-nil-t     nil)))
(def-lazy "K-tail" (p-nil-t   (p-nil-nil     nil)))
(def-lazy "L-tail" (p-nil-nil (p-t-t     nil)))
(def-lazy "M-tail" (p-nil-nil (p-t-nil     nil)))
(def-lazy "N-tail" (p-nil-nil (p-nil-t     nil)))
(def-lazy "O-tail" (p-nil-nil(p-nil-nil nil)))
(def-lazy "P-tail" (2 p-t-t     nil))
(def-lazy "Q-tail" (p-t-t     (p-t-nil     nil)))
(def-lazy "R-tail" (p-t-t     (p-nil-t     nil)))
(def-lazy "S-tail" (p-t-t     (p-nil-nil     nil)))
(def-lazy "T-tail" (p-t-nil   (p-t-t     nil)))
(def-lazy "U-tail" (2 p-t-nil     nil))
(def-lazy "V-tail" (cons t (cons nil (cons nil (cons t nil)))))
(def-lazy "W-tail" (cons t (cons nil (cons nil (cons nil nil)))))
(def-lazy "X-tail" (cons nil (cons t (cons t (cons t nil)))))
(def-lazy "Y-tail" (cons nil (cons t (cons t (cons nil nil)))))
(def-lazy "Z-tail" (cons nil (cons t (cons nil (cons t nil)))))

(defun-lazy symbol-prefix (x) (p-t-t (p-nil-t x)))
(def-lazy "("   (symbol-prefix (p-nil-t (p-t-t nil))))
(def-lazy ")"   (symbol-prefix (p-nil-t (p-t-nil nil))))
(def-lazy " "   (symbol-prefix (p-t-t (p-t-t nil))))
(def-lazy "."   (symbol-prefix (p-nil-nil (p-nil-t nil))))
(def-lazy "\\n" (p-t-t (symbol-prefix (p-nil-t nil))))
(def-lazy "*"   (p-t-t (p-nil-t (p-nil-t (p-nil-t nil)))))
(def-lazy ":" (list t t nil nil nil t nil t))
(def-lazy "\\" (list t nil t nil nil nil t t))
(def-lazy "," (list t t nil t nil nil t t))
(def-lazy "-" (list t t nil t nil nil t nil))
(def-lazy "[" (list t nil t nil nil t nil nil))
(def-lazy "]" (list t nil t nil nil nil t nil))
(def-lazy "/" (list t t nil t nil nil nil nil))
(def-lazy "0" (list t t nil nil t t t t))
(def-lazy "1" (list t t nil nil t t t nil))
(def-lazy "2" (list t t nil nil t t nil t))
(def-lazy "3" (list t t nil nil t t nil nil))
(def-lazy "4" (list t t nil nil t nil t t))

