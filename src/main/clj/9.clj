(reduce * 1 (take 1 (for [a (range 1001)
              b (range 1001)
              c (range 1001)
              :when (and (< a b) (< b c) (= (+ a b c) 1000) (= (+ (* a a) (* b b)) (* c c)))]
    [a b c])))