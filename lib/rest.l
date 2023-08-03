(load "lib/cgi.l")
(symbols 'rst 'r 'pico)

(local) ('+Rest)

(de config (k)
  (assoc k *CONFIG)
)

(pool (config 'pool))


(put *Indexes T 'id)

(de get_index (Ent)
  (or (get '*Indexes Ent) (get '*Indexes T))
)

(de process_req ()
)

(de current_user () 
  ()
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
  
  (dm get> () prinl 'get)
  (dm post> () prinl 'post)
  (dm put> () prinl 'put)
  (dm delete> () prinl 'del)


(when *Dbg

)
