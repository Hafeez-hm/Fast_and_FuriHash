
########################################
Starting Full ike Collision Ablation with LIB_SET=legacy
########################################

Full ike with collision (col=1): running...

real	0m53.681s
user	0m52.159s
sys	0m0.381s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.
Completed legacy

########################################
Starting Full ike Collision Ablation with LIB_SET=ablation_jaffar
########################################

Full ike with collision (col=1): running...

real	0m10.745s
user	0m11.500s
sys	0m0.061s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.
Completed ablation_jaffar

########################################
Starting Full ike Collision Ablation with LIB_SET=ablation_infra
########################################

Full ike with collision (col=1): running...

real	0m16.760s
user	0m15.738s
sys	0m0.253s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.
Completed ablation_infra

########################################
Starting Full ike Collision Ablation with LIB_SET=current
########################################

Full ike with collision (col=1): running...

real	0m3.536s
user	0m3.316s
sys	0m0.055s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.
Completed current

########################################
Generated Full ike Ablation log files:
/root/MDH_construct/Testing/NDSS_ikeV2_HF_EC/logs/ablation/ablation_infra/LOG_col.txt
/root/MDH_construct/Testing/NDSS_ikeV2_HF_EC/logs/ablation/ablation_jaffar/LOG_col.txt
/root/MDH_construct/Testing/NDSS_ikeV2_HF_EC/logs/ablation/current/LOG_col.txt
/root/MDH_construct/Testing/NDSS_ikeV2_HF_EC/logs/ablation/legacy/LOG_col.txt
