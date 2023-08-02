(load "lib/cgi.l")
(symbols 'rst 'r 'pico)


(local) ('+Rest)

(put *Indexes T 'id)

(de get_index (Ent)
  (or (get '*Indexes Ent) (get '*Indexes T))
)

(de get_nouns ()
  (filter '((M) (= '+ (car (chop M)) ))( all 'pico~entities))
  
)

(class +Rest +Entity)
  (dm owner_col> (
    'uid
  ))
  (dm owner_at_creation> ()
    (or (: owner_at_creation) current_user)
  )
  (dm perms> ()
    (or (: perms) 611)
  )
  
  (dm get> () )
  (dm post> () )
  (dm put> () )
  (dm delete> () )


(when *Dbg

)
