module Homom

where

import qualified Rsa
import Debug.Trace

homomMulti encode decode inta intb = decode $ ena * enb
	where 
		ena = encode inta
		enb = encode intb

homomAdd encode decode inta intb = decode $ ena + enb
	where 
		ena = encode inta
		enb = encode intb		

homomMulti' encode decode n inta intb = decode $ (crab, cmab)
	where
		(cra,cma) = traceShowId $  encode inta
		(crb,cmb) = traceShowId $  encode intb
		cmab = traceShowId $ mod (cma * cmb) n  -- (m1m2+r1r2+r1m2+r2m1)
		crab = traceShowId $ mod (cra * crb) n  -- (r1r2)
		cmarb = traceShowId $ mod (cma * crb) n -- (m1r2+r1r2)
		cmbra = traceShowId $ mod (cmb * cra) n  -- (m2r1+r1r2)

--homomDecode decode cmab cra crb 
