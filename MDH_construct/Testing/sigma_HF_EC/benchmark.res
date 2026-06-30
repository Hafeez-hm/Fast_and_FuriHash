
########################################
Starting Sigma benchmark with LIB_SET=current
########################################

Sigma with assoc: running...

real	0m0.965s
user	0m0.915s
sys	0m0.018s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.

Sigma no collision: running...

real	0m1.093s
user	0m1.081s
sys	0m0.012s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.

Sigma with collision: running...

real	0m1.990s
user	0m1.950s
sys	0m0.039s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.

Completed Sigma benchmark with LIB_SET=current

########################################
Starting Sigma benchmark with LIB_SET=legacy
########################################

Sigma with assoc: running...

real	0m10.047s
user	0m9.982s
sys	0m0.024s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.

Sigma no collision: running...

real	0m7.743s
user	0m7.725s
sys	0m0.016s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.

Sigma with collision: running...

real	0m7.074s
user	0m6.902s
sys	0m0.053s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.

Completed Sigma benchmark with LIB_SET=legacy

Generated Sigma log files:
/root/MDH_construct/Testing/sigma_HF_EC/logs/current/LOG_assoc.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/current/LOG_col.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/current/LOG_no.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/legacy/LOG_assoc.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/legacy/LOG_col.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/legacy/LOG_no.txt
