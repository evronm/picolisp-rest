

(symbols 'entities 'rst 'r 'pico)

(local) (+User +Venue +Vendor +Event)

(class +User +Rest)
  (rel id (+Key +Need +Number))
  (rel eml (+Key +Need +String))
  (rel pw (+Key +Need +String))
  (rel addr (+Idx +String))
  (rel fn (+Ref +String))
  (rel ln (+String))
  (rel itins (+List +Joint) cust (+Itinerary))

(class +Venue +User)
  (rel nm (+Idx +String))
  (rel vendors (+List +Joint) vendor (+Vendor))
  (rel itins (+List +Joint) venue (+Itinerary))

(class +Vendor +User)
  (rel nm (+Idx +String))
  (rel vendues (+List +Joint) vendor (+Venue))
  (rel itins (+List +Joint) vendor (+Itinerary))

(class +Itinerary +Rest)
  (dm T ()
    (=: perms 666)
    (=: owner 'cust)
    (=: grp 'vendors 'vendors)
  )
  (rel dt (+Idx +Date))
  (rel tm (+Time))
  (rel cust (+Joint) event (+User))
  (rel vendors (+List +Joint) event (+Vendor))
  (rel venues (+List +Joint) event (+Venue))

(when *Dbg

)

