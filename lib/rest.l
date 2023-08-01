(load "lib/cgi.l")
(load "lib/sqlite.l")
(symbols 'rst 'r 'sqlite 'util 'pico)

(*Put *Indexes 'T 'id)

(de get_index (Entity)
)

(de get_entity (Name Key)
  if 

)

(when *Dbg
  (finish (sqlite3_close DB) (%@ "unlink" NIL 'foo.db))
  (setq DB (get_db 'foo.db))
  (get_row (get_query DB "create table foo (id int, foo text, dt date)"))
  (get_row (get_query DB "insert into foo values (1, 'asdf', '20220101')"))
)
