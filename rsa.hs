module Rsa

where


encode::Integer->Integer->Integer->Integer
encode n e m = mod me  n
	where
		me = m ^ e

decode::Integer->Integer->Integer->Integer
decode n d c = mod cd  n
	where
		cd = c ^ d

encode'::Integer->Integer->Integer->Integer->(Integer,Integer)
encode' n e r m = (cr,cm)
	where
		cr = encode n e r
		cm = encode n e $ mod (m*r) n

decode'::Integer->Integer->(Integer,Integer)->Integer
decode' n d (cr,cm) = mod (div mr r ) n
	where
		r = decode n d (mod cr n)
		mr = decode n d (mod cm n)