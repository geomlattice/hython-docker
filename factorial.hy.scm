;Design and Interpretation of Computer Programs 
;Ch5 Exercise 5.1 pg 672 
;ported from scheme to hy python
;define -> defn
;(funcname param param) -> funcname [param param]
(defn factorial [n]
  (defn iter [product counter]
    (if (> counter n)
      product
      (iter (* counter product)
	    (+ counter 1))))
  (iter 1 1))

(print(factorial 3))
(print(factorial 5))
