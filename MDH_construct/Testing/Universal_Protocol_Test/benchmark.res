
########################################
Starting Universal benchmark with LIB_SET=current
########################################

Universal protocol with assoc: running...

real	0m2.052s
user	0m1.953s
sys	0m0.098s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol no collision: running...

real	0m5.056s
user	0m4.943s
sys	0m0.101s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol with collision: running...

real	0m4.543s
user	0m4.459s
sys	0m0.086s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Completed Universal benchmark with LIB_SET=current

########################################
Starting Universal benchmark with LIB_SET=legacy
########################################

Universal protocol with assoc: running...

real	0m3.415s
user	0m3.361s
sys	0m0.056s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol no collision: running...

real	0m3.158s
user	0m3.092s
sys	0m0.067s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol with collision: running...

real	0m0.000s
user	0m3.388s
sys	0m0.124s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Completed Universal benchmark with LIB_SET=legacy

Generated universal log files:
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/current/LOG_assoc.txt
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/current/LOG_col.txt
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/current/LOG_no.txt
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/legacy/LOG_assoc.txt
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/legacy/LOG_col.txt
/root/MDH_construct/Testing/Universal_Protocol_Test/logs/legacy/LOG_no.txt
