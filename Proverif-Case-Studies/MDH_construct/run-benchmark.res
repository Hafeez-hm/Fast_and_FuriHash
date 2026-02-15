
SIGMA with assoc, with col: running...

real	0m4.669s
user	0m4.640s
sys	0m0.029s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.

Simplified IKE with assoc, with col: running...

real	1m8.015s
user	1m7.523s
sys	0m0.450s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

IKE with assoc, with col: running...

real	0m58.713s
user	0m58.499s
sys	0m0.209s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) cannot be proved.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.

Generated log files:
LOG_ike_assoc.txt
LOG_ike_col.txt
LOG_ike_no.txt
LOG_ikeS_assoc.txt
LOG_ikeS_col.txt
LOG_ikeS_no.txt
LOG_sigma_assoc.txt
LOG_sigma_col.txt
LOG_sigma_no.txt
