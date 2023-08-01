(load "lib/cgi.l")
(symbols 'rst 'r 'pico)


(put *Indexes 'T 'id)

(de get_index (Entity)
  (or (get *Indexes Entity) (get *Indexes 'T))
)

(de process_query (Q)

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

(process_query qs)
(when *Dbg

)
