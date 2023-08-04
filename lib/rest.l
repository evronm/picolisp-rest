(symbols 'rst 'r 'util 'pico)

(local) ('+Rest)

(de config (k)
  (cdr (assoc k *CONFIG))
)

(pool (config 'pool))


(put *Indexes T 'id)

(de get_index (Ent)
  (or (get '*Indexes Ent) (get '*Indexes T))
)

(de process_req ()
  (setq Noun (car pth) Ns (intern (config 'ns)))
  (setq Cls (or (isa '+Rest (intern (to_cls_nm Noun) Ns)) (intern (to_cls_nm (singularize Noun) Ns ))))
  (send (intern req_meth) Cls pth)
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
