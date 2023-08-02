
(symbols 'plursing 'pico)

(de pluralize (S)
  ( cond
    ((= '(q u i z) S) '(q u i z z e s))
    ((= '(o x) (tail 2 S)) (append S '(e s )))
    ((and (member (car S) '(l m)) (= '(o u s e) (tail 4 S))) (list (car S) '(i c e)))
    (T (append S '(s)))
  )
)

(de singularize (s)
)

(when *Dbg
  ~(assert (= "quizzes" (pack(pluralize (chop "quiz")))))
  ~(assert (= "foxes" (pack(pluralize (chop "fox")))))
  ~(assert (= "mice" (pack(pluralize (chop "mouse")))))
  ~(assert (= "houses" (pack(pluralize (chop "house")))))

)
