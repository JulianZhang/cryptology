
encode::Integer->Integer->Integer->Integer
encode n e m = mod me  n
	where
		me = m ^ e

decode::Integer->Integer->Integer->Integer
decode n d c = mod cd  n
	where
		cd = c ^ d